#!/bin/bash
echo "Creating Git mirrors; This may take a while."
mkdir -p ../wow-upstream
cd ../-wow-upstream
git svn clone svn://svn.wowace.com/wow/weakauras/mainline/trunk WeakAuras
git svn clone svn://svn.curseforge.net/wow/altoholic/mainline/trunk Altoholic
git svn clone svn://svn.curseforge.net/wow/autolog/mainline/trunk AutoLog
git svn clone svn://svn.wowace.com/wow/reforgelite/mainline/trunk ReforgeLite
git svn clone svn://svn.wowace.com/wow/skada/mainline/trunk Skada
git svn clone svn://svn.wowace.com/wow/libwindow-1-1/mainline/trunk LibWindow-1.1
git svn clone svn://svn.curseforge.net/wow/datastore_achievements/mainline/trunk DataStore_Achievements
git svn clone svn://svn.curseforge.net/wow/datastore_agenda/mainline/trunk DataStore_Agenda
git svn clone svn://svn.curseforge.net/wow/datastore_auctions/mainline/trunk DataStore_Auctions
git svn clone svn://svn.curseforge.net/wow/datastore_characters/mainline/trunk DataStore_Characters
git svn clone svn://svn.curseforge.net/wow/datastore_containers/mainline/trunk DataStore_Containers
git svn clone svn://svn.curseforge.net/wow/datastore_crafts/mainline/trunk DataStore_Crafts
git svn clone svn://svn.curseforge.net/wow/datastore_currencies/mainline/trunk DataStore_Currencies
git svn clone svn://svn.curseforge.net/wow/datastore_inventory/mainline/trunk DataStore_Inventory
git svn clone svn://svn.curseforge.net/wow/datastore_mails/mainline/trunk DataStore_Mails
git svn clone svn://svn.curseforge.net/wow/datastore_pets/mainline/trunk DataStore_Pets
git svn clone svn://svn.curseforge.net/wow/datastore_quests/mainline/trunk DataStore_Quests
git svn clone svn://svn.curseforge.net/wow/datastore_reputations/mainline/trunk DataStore_Reputations
git svn clone svn://svn.curseforge.net/wow/datastore_spells/mainline/trunk DataStore_Spells
git svn clone svn://svn.curseforge.net/wow/datastore_stats/mainline/trunk DataStore_Stats
git svn clone svn://svn.curseforge.net/wow/datastore/mainline/trunk DataStore
git svn clone svn://svn.curseforge.net/wow/datastore_talents/mainline/trunk DataStore_Talents
git svn clone svn://svn.wowace.com/wow/ace-gui-3-0-shared-media-widgets/mainline/trunk AceGUI-3.0-SharedMediaWidgets
git svn clone svn://svn.wowace.com/wow/ace3/mainline/trunk Ace3
<<<<<<< HEAD
git svn clone svn://svn.wowace.com/wow/libauctionscan-1-0/mainline/trunk LibAuctionScan
=======
git svn clone svn://svn.wowace.com/wow/libauctionscan/mainline/trunk LibAuctionScan
>>>>>>> 114d9cdb1cfca9d0356fa34b3352191d5ac6625e
git svn clone svn://svn.wowace.com/wow/libbabble-artifacts-3-0/mainline/trunk LibBabble-Artifacts-3.0
git svn clone svn://svn.wowace.com/wow/libbabble-boss-3-0/mainline/trunk LibBabble-Boss-3.0
git svn clone svn://svn.wowace.com/wow/libbabble-digsites-3-0/mainline/trunk LibBabble-DigSites-3.0
git svn clone svn://svn.wowace.com/wow/libbabble-faction-3-0/mainline/trunk LibBabble-Faction-3.0
git svn clone svn://svn.wowace.com/wow/libbabble-inventory-3-0/mainline/trunk LibBabble-Inventory-3.0
git svn clone svn://svn.wowace.com/wow/libbabble-zone-3-0/mainline/trunk LibBabble-Zone-3.0
git svn clone svn://svn.wowace.com/wow/libcandybar-3-0/mainline/trunk LibCandyBar-3.0
git svn clone svn://svn.wowace.com/wow/libcompress/mainline/trunk LibCompress
git svn clone svn://svn.wowace.com/wow/libdbicon-1-0/mainline/trunk LibDBIcon-1.0
git svn clone svn://svn.wowace.com/wow/libddi-1-0/mainline/trunk LibDDI-1.0
git svn clone svn://svn.wowace.com/wow/libperiodictable-3-1/mainline/trunk LibPeriodicTable-3.1
git svn clone svn://svn.wowace.com/wow/libqtip-1-0/mainline/trunk LibQTip-1.0
git svn clone svn://svn.wowace.com/wow/libsharedmedia-3-0/mainline/trunk LibSharedMedia-3.0
git svn clone svn://svn.wowace.com/wow/libsink-2-0/mainline/trunk LibSink-2.0
git svn clone svn://svn.wowace.com/wow/lib-st/mainline/trunk lib-st
git svn clone svn://svn.wowace.com/wow/libstub/mainline/trunk LibStub
git svn clone svn://svn.curseforge.net/wow/tradeskillmaster_accounting/mainline/trunk TradeSkillMaster_Accounting
git svn clone svn://svn.curseforge.net/wow/tradeskillmaster_auctiondb/mainline/trunk TradeSkillMaster_AuctionDB
git svn clone svn://svn.curseforge.net/wow/tradeskillmaster_auctioning/mainline/trunk TradeSkillMaster_Auctioning
git svn clone svn://svn.curseforge.net/wow/tradeskillmaster_crafting/mainline/trunk TradeSkillMaster_Crafting
git svn clone svn://svn.curseforge.net/wow/tradeskillmaster_destroying/mainline/trunk TradeSkillMaster_Destroying
git svn clone svn://svn.curseforge.net/wow/tradeskillmaster_gathering/mainline/trunk TradeSkillMaster_Gathering
git svn clone svn://svn.curseforge.net/wow/tradeskillmaster_itemtracker/mainline/trunk TradeSkillMaster_ItemTracker
git svn clone svn://svn.curseforge.net/wow/tradeskillmaster_mailing/mainline/trunk TradeSkillMaster_Mailing
git svn clone svn://svn.curseforge.net/wow/tradeskillmaster_shopping/mainline/trunk TradeSkillMaster_Shopping
git svn clone svn://svn.curseforge.net/wow/tradeskill-master/mainline/trunk TradeSkillMaster
git svn clone svn://svn.curseforge.net/wow/tradeskillmaster_warehousing/mainline/trunk TradeSkillMaster_Warehousing
git svn clone svn://svn.wowace.com/wow/big-wigs/mainline/trunk BigWigs
git svn clone svn://svn.wowace.com/wow/libbossids-1-0/mainline/trunk LibBossIDs-1.0
