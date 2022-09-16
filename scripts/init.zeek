##! Packet source using AF_Packet.
##!
##! Note: This module is in testing and is not yet considered stable!

module AF_Packet;

export {
	## Size of the ring-buffer.
	const buffer_size = 128 * 1024 * 1024 &redef;
	## Size of an individual block. Needs to be a multiple of page size.
	## Defaults to 32KB.
	const block_size = 4096 * 8 &redef;
	## Retire timeout for a single block. Default is 10msec.
	const block_timeout = 10msec &redef;
	## Toggle whether to use hardware timestamps.
	const enable_hw_timestamping = F &redef;
	## Toggle whether to use PACKET_FANOUT.
	const enable_fanout = T &redef;
	## Toggle defragmentation of IP packets using PACKET_FANOUT_FLAG_DEFRAG.
	const enable_defrag = F &redef;
	## Fanout Mode.
	const fanout_mode = FANOUT_HASH &redef;
	## Fanout ID.
	const fanout_id = 23 &redef;
	## Link type (default Ethernet).
	const link_type = 1 &redef;
}
