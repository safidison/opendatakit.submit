package org.opendatakit.submit.scheduling;

import org.opendatakit.submit.flags.MessageType;
import org.opendatakit.submit.flags.SyncType;

interface ClientRemote {

	String send( String uri, String pathname, String uid );
	String create( inout SyncType st, String uri, String pathname, String uid );
	String download( inout SyncType st, String uri, String pathname, String uid );
	String sync( inout SyncType st, String uri, String pathname, String uid );
	String delete( inout SyncType st, String uri, String pathname, String uid );
	boolean onQueue( String uid );
	int queueSize( );

}