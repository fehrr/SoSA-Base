-----------------------------------------------------------------------------------------------------------------------------------------
-- CHARACTERS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("characters/GetCharacters","SELECT * FROM characters WHERE id = @id")
vRP.Prepare("characters/GetCard","SELECT * FROM characters WHERE id = @id AND card = @card")
vRP.Prepare("characters/InsertCard","INSERT INTO characters(id,card) VALUES(@id,@card)")
vRP.Prepare("characters/Person","SELECT * FROM characters WHERE id = @id")
vRP.Prepare("characters/getPhone","SELECT id FROM characters WHERE phone = @phone")
vRP.Prepare("characters/updatePhone","UPDATE characters SET phone = @phone WHERE id = @id")
vRP.Prepare("characters/removeCharacter","UPDATE characters SET deleted = 1 WHERE id = @id")
vRP.Prepare("accounts/updateWhitelist","UPDATE accounts SET whitelist = @whitelist WHERE id = @id")
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("vRP/GetRelac","SELECT * FROM casados WHERE  id = @id")
vRP.Prepare("vRP/SetRelac", "UPDATE casados SET casados = @casados WHERE id = @id")
vRP.Prepare("vRP/Divorcio","DELETE FROM casados WHERE id = @id")
vRP.Prepare("vRP/InsertRelac","INSERT INTO casados(id,membro1,membro2,casados) VALUES(@id,@membro1,@membro2,@casados)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("characters/addBank","UPDATE characters SET bank = bank + @amount WHERE id = @Passport")
vRP.Prepare("characters/remBank","UPDATE characters SET bank = bank - @amount WHERE id = @Passport")
vRP.Prepare("characters/UserLicense","SELECT * FROM characters WHERE id = @id and license = @license")
vRP.Prepare("characters/Characters","SELECT * FROM characters WHERE license = @license and deleted = 0")
vRP.Prepare("characters/updateName","UPDATE characters SET name = @name, name2 = @name2 WHERE id = @Passport")
vRP.Prepare("characters/Tracking","UPDATE characters SET tracking = tracking + @tracking WHERE id = @Passport")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CREDITCARD
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("characters/UpgradeSpending","UPDATE characters SET spending = spending + @spending WHERE id = @Passport")
vRP.Prepare("characters/DowngradeSpending","UPDATE characters SET spending = spending - @spending WHERE id = @Passport")
vRP.Prepare("characters/UpgradeCardlimit","UPDATE characters SET cardlimit = cardlimit + @cardlimit WHERE id = @Passport")
vRP.Prepare("characters/DowngradeCardlimit","UPDATE characters SET cardlimit = cardlimit - @cardlimit WHERE id = @Passport")
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("characters/lastCharacters","SELECT id FROM characters WHERE license = @license ORDER BY id DESC LIMIT 1")
vRP.Prepare("characters/countPersons","SELECT COUNT(license) as qtd FROM characters WHERE license = @license and deleted = 0")
vRP.Prepare("characters/newCharacter","INSERT INTO characters(license,name,name2,sex,phone,blood,created, time) VALUES(@license,@name,@name2,@sex,@phone,@blood,UNIX_TIMESTAMP() + 259200, @time)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- ACCOUNTS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("accounts/Account","SELECT * FROM accounts WHERE license = @license")
vRP.Prepare("accounts/newAccount","INSERT INTO accounts(license) VALUES(@license)")
vRP.Prepare("accounts/AddGems","UPDATE accounts SET gems = gems + @gems WHERE license = @license")
vRP.Prepare("accounts/addPriority","UPDATE accounts SET priority = priority + @priority WHERE license = @license")
vRP.Prepare("accounts/remPriority","UPDATE accounts SET priority = priority - @priority WHERE license = @license")
vRP.Prepare("accounts/RemoveGems","UPDATE accounts SET gems = gems - @gems WHERE license = @license")
vRP.Prepare("accounts/infosUpdatechars","UPDATE accounts SET chars = chars + 1 WHERE license = @license")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERDATA
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("playerdata/GetData","SELECT * FROM playerdata WHERE Passport = @Passport AND dkey = @dkey")
vRP.Prepare("playerdata/SetData","REPLACE INTO playerdata(Passport,dkey,dvalue) VALUES(@Passport,@dkey,@dvalue)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- ENTITYDATA
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("entitydata/SetDatas","REPLACE INTO entitydata(dkey,dvalue) VALUES(@dkey,@dvalue)")
vRP.Prepare("entitydata/GetDatas","SELECT * FROM entitydata WHERE dkey = @dkey")
vRP.Prepare("entitydata/GetData","SELECT * FROM entitydata WHERE dkey = @dkey")
vRP.Prepare("entitydata/RemoveData","DELETE FROM entitydata WHERE dkey = @dkey")
vRP.Prepare("entitydata/SetData","REPLACE INTO entitydata(dkey,dvalue) VALUES(@dkey,@dvalue)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAINEL
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("chests/DowngradeChests","UPDATE chests SET weight = weight / 2 WHERE name = @Name")
vRP.Prepare("chests/UpgradeChests2","UPDATE chests SET weight = weight + weight WHERE name = @Name")
vRP.Prepare("painel/GetInformations","SELECT * FROM organizations WHERE name = @Name")
vRP.Prepare("painel/UpdateBuff","UPDATE organizations SET buff = @Buff WHERE name = @Name")
vRP.Prepare("painel/DowngradeBank","UPDATE organizations SET bank = bank - @Value WHERE name = @Name")
vRP.Prepare("painel/UpgradeBank","UPDATE organizations SET bank = bank + @Value WHERE name = @Name")
vRP.Prepare("painel/GetTransactions","SELECT * FROM org_transactions WHERE name = @Name ORDER BY id DESC LIMIT 12")
vRP.Prepare("painel/InsertTransaction","INSERT INTO org_transactions (`name`, `Type`, `Value`) VALUES (@Name, @Type, @Value)")
vRP.Prepare("painel/UpdateBuff","UPDATE organizations SET buff = @Buff WHERE name = @Name")
vRP.Prepare("painel/SetPremium","UPDATE organizations SET premium = @Seconds WHERE name = @Name")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLES
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("vehicles/plateVehicles","SELECT * FROM vehicles WHERE plate = @plate")
vRP.Prepare("vehicles/UserVehicles","SELECT * FROM vehicles WHERE Passport = @Passport")
vRP.Prepare("vehicles/removeVehicles","DELETE FROM vehicles WHERE Passport = @Passport AND vehicle = @vehicle")
vRP.Prepare("vehicles/selectVehicles","SELECT * FROM vehicles WHERE Passport = @Passport AND vehicle = @vehicle")
vRP.Prepare("vehicles/paymentArrest","UPDATE vehicles SET arrest = 0 WHERE Passport = @Passport AND vehicle = @vehicle")
vRP.Prepare("vehicles/moveVehicles","UPDATE vehicles SET Passport = @OtherPassport WHERE Passport = @Passport AND vehicle = @vehicle")
vRP.Prepare("vehicles/plateVehiclesUpdate","UPDATE vehicles SET plate = @plate WHERE Passport = @Passport AND vehicle = @vehicle")
vRP.Prepare("vehicles/rentalVehiclesDays","UPDATE vehicles SET rental = rental + 2592000 WHERE Passport = @Passport AND vehicle = @vehicle")
vRP.Prepare("vehicles/arrestVehicles","UPDATE vehicles SET arrest = UNIX_TIMESTAMP() + 2592000 WHERE Passport = @Passport AND vehicle = @vehicle")
vRP.Prepare("vehicles/updateVehiclesTax","UPDATE vehicles SET tax = UNIX_TIMESTAMP() + 2592000 WHERE Passport = @Passport AND vehicle = @vehicle")
vRP.Prepare("vehicles/rentalVehiclesUpdate","UPDATE vehicles SET rental = UNIX_TIMESTAMP() + 2592000 WHERE Passport = @Passport AND vehicle = @vehicle")
vRP.Prepare("vehicles/addVehicles","INSERT IGNORE INTO vehicles(Passport,vehicle,plate,work,tax) VALUES(@Passport,@vehicle,@plate,@work,UNIX_TIMESTAMP() + 604800)")
vRP.Prepare("vehicles/rentalVehicles","INSERT IGNORE INTO vehicles(Passport,vehicle,plate,work,rental,tax) VALUES(@Passport,@vehicle,@plate,@work,UNIX_TIMESTAMP() + 2592000,UNIX_TIMESTAMP() + 604800)")
vRP.Prepare("vehicles/updateVehicles","UPDATE vehicles SET engine = @engine, body = @body, health = @health, fuel = @fuel, doors = @doors, windows = @windows, tyres = @tyres, nitro = @nitro WHERE Passport = @Passport AND vehicle = @vehicle")
-----------------------------------------------------------------------------------------------------------------------------------------
-- BANNEDS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("banneds/GetBanned","SELECT * FROM banneds WHERE license = @license")
vRP.Prepare("banneds/RemoveBanned","DELETE FROM banneds WHERE license = @license")
vRP.Prepare("banneds/InsertBanned","INSERT INTO banneds(license,time) VALUES(@license,UNIX_TIMESTAMP() + 86400 * @time)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("chests/GetChests","SELECT * FROM chests WHERE Name = @Name")
vRP.Prepare("chests/AddChests","INSERT IGNORE INTO chests(Name,Permission) VALUES(@Name,@Name)")
vRP.Prepare("chests/UpdateWeight","UPDATE chests SET Weight = Weight + (10 * @Multiplier), Slots = Slots + (5 * @Multiplier) WHERE Name = @Name")
-----------------------------------------------------------------------------------------------------------------------------------------
-- RACES
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("races/Result","SELECT * FROM races WHERE Race = @Race AND Passport = @Passport")
vRP.Prepare("races/Ranking","SELECT * FROM races WHERE Race = @Race ORDER BY Points ASC LIMIT 5")
vRP.Prepare("races/TopFive","SELECT * FROM races WHERE Race = @Race ORDER BY Points ASC LIMIT 1 OFFSET 4")
vRP.Prepare("races/Records","UPDATE races SET Points = @Points, Vehicle = @Vehicle WHERE Race = @Race AND Passport = @Passport")
vRP.Prepare("races/Insert","INSERT INTO races(Race,Passport,Name,Vehicle,Points) VALUES(@Race,@Passport,@Name,@Vehicle,@Points)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- FINDENTITY
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("fidentity/Result","SELECT * FROM fidentity WHERE id = @id")
vRP.Prepare("fidentity/GetIdentity","SELECT id FROM fidentity ORDER BY id DESC LIMIT 1")
vRP.Prepare("fidentity/NewIdentity","INSERT INTO fidentity(name,name2,blood) VALUES(@name,@name2,@blood)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLEARTABLES
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("summerz/Playerdata","DELETE FROM playerdata WHERE dvalue = '[]' OR dvalue = '{}'")
vRP.Prepare("summerz/Entitydata","DELETE FROM entitydata WHERE dvalue = '[]' OR dvalue = '{}'")
-----------------------------------------------------------------------------------------------------------------------------------------
-- WAREHOUSE
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("warehouse/All","SELECT * FROM warehouse")
vRP.Prepare("warehouse/Sell","DELETE FROM warehouse WHERE Number = @Number")
vRP.Prepare("warehouse/Informations","SELECT * FROM warehouse WHERE Number = @Number")
vRP.Prepare("warehouse/Password","UPDATE warehouse SET Password = @Password WHERE Number = @Number")
vRP.Prepare("warehouse/Transfer","UPDATE warehouse SET Passport = @Passport WHERE Number = @Number")
vRP.Prepare("warehouse/Acess","SELECT * FROM warehouse WHERE Number = @Number AND Password = @Password")
vRP.Prepare("warehouse/Tax","UPDATE warehouse SET Tax = UNIX_TIMESTAMP() + 2592000 WHERE Number = @Number")
vRP.Prepare("warehouse/Upgrade","UPDATE warehouse SET Weight = Weight + (10 * @Multiplier) WHERE Number = @Number")
vRP.Prepare("warehouse/Buy","INSERT INTO warehouse(Number,Password,Passport,Tax) VALUES(@Number,@Password,@Passport,UNIX_TIMESTAMP() + 2592000)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PROPERTYS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("propertys/All","SELECT * FROM propertys")
vRP.Prepare("propertys/Sell","DELETE FROM propertys WHERE Number = @Number")
vRP.Prepare("propertys/Exist","SELECT * FROM propertys WHERE Number = @Number")
vRP.Prepare("propertys/Key","SELECT * FROM propertys WHERE Keychain = @Key")
vRP.Prepare("propertys/AllUser","SELECT * FROM propertys WHERE Passport = @Passport")
vRP.Prepare("propertys/Interior","UPDATE propertys SET Interior = @Interior WHERE Number = @Number")
vRP.Prepare("propertys/Credentials","UPDATE propertys SET Keychain = @Key WHERE Number = @Number")
vRP.Prepare("propertys/Transfer","UPDATE propertys SET Passport = @Passport WHERE Number = @Number")
vRP.Prepare("propertys/Check","SELECT * FROM propertys WHERE Number = @Number AND Passport = @Passport")
vRP.Prepare("propertys/Tax","UPDATE propertys SET Tax = UNIX_TIMESTAMP() + 2592000 WHERE Number = @Number")
vRP.Prepare("propertys/Buy","INSERT INTO propertys(Number,Passport,Interior,Keychain,Tax) VALUES(@Number,@Passport,@Interior,@Key,@Tax)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- FINES
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("fines/List","SELECT * FROM fines WHERE Passport = @Passport")
vRP.Prepare("fines/Remove","DELETE FROM fines WHERE Passport = @Passport AND id = @id")
vRP.Prepare("fines/Check","SELECT * FROM fines WHERE Passport = @Passport AND id = @id")
vRP.Prepare("fines/Add","INSERT INTO fines(Passport,Name,Date,Hour,Value,Message) VALUES(@Passport,@Name,@Date,@Hour,@Value,@Message)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- TAXS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("taxs/List","SELECT * FROM taxs WHERE Passport = @Passport")
vRP.Prepare("taxs/Remove","DELETE FROM taxs WHERE Passport = @Passport AND id = @id")
vRP.Prepare("taxs/Check","SELECT * FROM taxs WHERE Passport = @Passport AND id = @id")
vRP.Prepare("taxs/Add","INSERT INTO taxs(Passport,Name,Date,Hour,Value,Message) VALUES(@Passport,@Name,@Date,@Hour,@Value,@Message)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRANSACTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("transactions/List","SELECT * FROM transactions WHERE Passport = @Passport ORDER BY id DESC LIMIT @Limit")
vRP.Prepare("transactions/Add","INSERT INTO transactions(Passport,Type,Date,Value,Balance) VALUES(@Passport,@Type,@Date,@Value,@Balance)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEPENDENTS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("dependents/List","SELECT * FROM dependents WHERE Passport = @Passport")
vRP.Prepare("dependents/Remove","DELETE FROM dependents WHERE Passport = @Passport AND Dependent = @Dependent")
vRP.Prepare("dependents/Check","SELECT * FROM dependents WHERE Passport = @Passport AND Dependent = @Dependent")
vRP.Prepare("dependents/Add","INSERT INTO dependents(Passport,Dependent,Name) VALUES(@Passport,@Dependent,@Name)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVOICES
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("invoices/Remove","DELETE FROM invoices WHERE id = @id")
vRP.Prepare("invoices/Check","SELECT * FROM invoices WHERE id = @id")
vRP.Prepare("invoices/List","SELECT * FROM invoices WHERE Passport = @Passport")
vRP.Prepare("invoices/Add","INSERT INTO invoices(Passport,Received,Type,Reason,Holder,Value) VALUES(@Passport,@Received,@Type,@Reason,@Holder,@Value)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVESTMENTS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("investments/Remove","DELETE FROM investments WHERE Passport = @Passport")
vRP.Prepare("investments/Check","SELECT * FROM investments WHERE Passport = @Passport")
vRP.Prepare("investments/Add","INSERT INTO investments(Passport,Deposit,Last) VALUES(@Passport,@Deposit,UNIX_TIMESTAMP() + 86400)")
vRP.Prepare("investments/Invest","UPDATE investments SET Deposit = Deposit + @Value, Last = UNIX_TIMESTAMP() + 86400 WHERE Passport = @Passport")
vRP.Prepare("investments/Actives","UPDATE investments SET Monthly = Monthly + FLOOR((Deposit + Liquid) * 0.10), Liquid = Liquid + FLOOR((Deposit + Liquid) * 0.025), Last = UNIX_TIMESTAMP() + 86400 WHERE Last < UNIX_TIMESTAMP()")
-----------------------------------------------------------------------------------------------------------------------------------------
-- FINES
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("fines/CheckList","SELECT * FROM fines ")
vRP.Prepare("fines/CheckLists","SELECT * FROM fines WHERE Passport = @Passport")
vRP.Prepare("fines/RemoveList","DELETE FROM fines WHERE Passport = @Passport AND id = @id")
vRP.Prepare("fines/Removes","DELETE FROM fines WHERE id = @id AND Passport = @Passport")
-----------------------------------------------------------------------------------------------------------------------------------------
-------------------- Modifiers ----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("vRP/set_userdata","REPLACE INTO playerdata(Passport,dkey,dvalue) VALUES(@Passport,@key,@value)")
vRP.Prepare("vRP/get_userdata","SELECT dvalue FROM playerdata WHERE Passport = @Passport AND dkey = @key")
-----------------------------------------------------------------------------------------------------------------------------------------
-- Prepare vRP_SRV_DATA
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("vRP/set_srvdata","REPLACE INTO entitydata(dkey,dvalue) VALUES(@key,@value)")
vRP.Prepare("vRP/get_srvdata","SELECT dvalue FROM entitydata WHERE dkey = @key")