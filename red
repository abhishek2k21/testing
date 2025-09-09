50	"Verify data integrity for a ticket with multiple updates	"	"Validate that ticket 50, 
which was updated after creation, 
has correct timestamps and related conversation and attachment data.	"	"1. SELECT * FROM ticket_details WHERE ticket_id = 50; 
2. SELECT * FROM conversation_details WHERE ticket_id = 50; 
3. SELECT * FROM attachment_redact_info WHERE ticket_id = 50;	"	"1. ticket_details shows created_at (14:56:09) is earlier than updated_at (15:03:37). 
2. conversation_details for ticket 50 has conversation_id 14000020106785. 
3. attachment_redact_info shows two entries with state = 'DOCUMENT_CLEANUP_DONE'.	"	"Data Matched:
• ticket_details: created_at = 2025-08-28 14:56:09, updated_at = 2025-08-28 15:03:37.
• conversation_details: conversation_id = 14000020106785.
• attachment_redact_info: Two records found, both with state = DOCUMENT_CLEANUP_DONE.
"																	
70	Verify ticket without attachment	"Check that ticket 70, 
marked with is_attachment_present = 0, 
has no corresponding entries in attachment-related tables.	"	"1. SELECT is_attachment_present FROM ticket_details WHERE ticket_id = 70;
2. SELECT COUNT(*) FROM attachment_redact_info WHERE ticket_id = 70;
3. SELECT COUNT(*) FROM redaction_request_log WHERE ticket_id = 70;	"	"1. The query on ticket_details returns is_attachment_present = 0.
2. Both COUNT(*) queries return 0.	"	"Verified No Attachments:
•ticket_details.is_attachment_present: 0.
• attachment_redact_info count: 0.
• redaction_request_log count: 0.
"																	
100	"Verify ticket with invalid source data	"	"Investigate ticket 100, which has source = 100. This appears to be an invalid or placeholder value.	"	"1. SELECT * FROM ticket_details WHERE ticket_id = 100;
2. Check if the application handles or flags tickets with a source ID of 100.	"	"The database correctly stores source = 100. 
The application should handle this gracefully."	"Verified Invalid Data Handling:
• ticket_details row for ticket_id=100 correctly shows source = 100 and status = 11.
• The application UI displays the source as 'Unknown' and does not crash.
"																	
90	Verify optimistic locking with version increment	"Ticket 90 has version = 1, 
indicating it has been updated. This test validates the versioning mechanism.	"	"1. Note updated_at (16:23:59) and version (1) for ticket_id = 90.
2. UPDATE ticket_details SET priority = 3 WHERE ticket_id = 90;	"	"The row for ticket 90 shows priority as 3. 
The version column increments to 2, and the updated_at timestamp is updated.	"	"Update Successful:
• priority changed from 2 to 3.
• version incremented from 1 to 2.
• updated_at changed from 2025-09-02 16:23:59 to 2025-09-08 20:05:40.
"																	
800	Create ticket with attachment_on = 'CONVERSATION'	"All logs show attachment_on = 'TICKET'. 
Test handling of attachments linked directly to a conversation.	"	"1. Create a full ticket flow for ticket_id = 800.
2. In attachment_redact_info, set attachment_on = 'CONVERSATION'.	"	The data is inserted successfully.	"Record Created:
• An attachment record for ticket_id = 800 was created at 2025-09-08 20:08:10.
• The attachment_on column correctly displays 'CONVERSATION'.
"																	
650	Mark a conversation as private	Test updating an existing conversation to be private.	"1. Note is_private is 1 for conversation_id = 14000020125000.
2. UPDATE conversation_details SET is_private = 0 WHERE conversation_id = 14000020125000;	"	"The is_private flag is updated to 0, and the updated_at timestamp changes.	"	"Flag Toggled:
• is_private for conversation_id = 14000020125000 is now 0.
• updated_at changed from 2025-09-08 16:00:00 to 2025-09-08 20:06:15.
"																	
123	"Update a closed ticket	"	"Ticket 123 has status = 4 (likely 'Closed'). 
Test if the system allows updates.	"	"1. Note status = 4 and version = 2 for ticket_id = 123.
2. UPDATE ticket_details SET priority = 1 WHERE ticket_id = 123;	"	"The UPDATE should succeed, incrementing the version to 3 and updating the timestamp.	"	"Update on Closed Ticket Successful:
• priority changed to 1.
• version incremented from 2 to 3.
• updated_at changed from 2025-09-04 19:56:49 to 2025-09-08 20:08:50.
"																	
130	"validating the soft-deleting of a conversation	"	"Test deleting a single conversation from a ticket without deleting the ticket itself.	"	"1. Check is_deleted for conversation_id = 14000020120251 (is 0).
2. UPDATE conversation_details SET is_deleted = 1 WHERE conversation_id = 14000020120251;	"	"The is_deleted flag for the conversation is now 1. 
The parent ticket (130) remains unaffected.	"	"Soft Delete Successful:
• conversation_details: is_deleted is 1 for conversation_id = 14000020120251.
• ticket_details: Record for ticket_id = 130 is unchanged.
"																	
135	"validate the simulate soft-deleting a ticket	"	"Test the soft-delete functionality by updating the is_deleted flag for a recent ticket.	"	"1. Check is_deleted for ticket_id = 135 (is 0).
2. UPDATE ticket_details SET is_deleted = 1 WHERE ticket_id = 135;	"	"The is_deleted flag for ticket 135 is now 1. 
Related records in other tables are not deleted.	"	"Soft Delete Successful:
• ticket_details: is_deleted is 1 for ticket_id = 135.
• conversation_details: Record for conversation_id = 14000020121230 still exists with is_deleted = 0.
"																	
49	"Analyze a failed attachment redaction	"	"attachment_redact_info for ticket_id = 49 shows a DB_INSERTION_ERROR and a 403 Forbidden message. 
This test documents this failure.	"	"1. SELECT * FROM attachment_redact_info WHERE ticket_id = 49;
2. SELECT * FROM redaction_request_log WHERE ticket_id = 49;	"	"The logs show a state of PENDING with a response_code of DB_INSERTION_ERROR and a message indicating a 403 error.	"	"Failure Log Verified:
• Table attachment_redact_info for id=163: 
• state: PENDING • response_code: DB_INSERTION_ERROR 
• retry_attempt_count: 637 
• message: Failed to convert image URL to base64: Server returned HTTP response code: 403...
