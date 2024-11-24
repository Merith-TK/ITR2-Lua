-- AUTO-GENERATED BY EVENTS LIB UPDATE SCRIPT --
Events = {
	ArtefactNestBase = {
		OnRep_ArtefactRef = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.ArtefactNestBase:OnRep_ArtefactRef", func)
		end,
		OnArtefactRefReplicated = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.ArtefactNestBase:OnArtefactRefReplicated", func)
		end,
	},
	ArtefactNestSpawnPoint = {
		OnArtefactTaken = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.ArtefactNestSpawnPoint:OnArtefactTaken", func)
		end,
	},
	ConditionalHider = {
		OnAccessLevelChanged = function(func)
		-- Params: AccessLevel --
		RegisterHook("/Script/IntoTheRadius2.ConditionalHider:OnAccessLevelChanged", func)
		end,
	},
	LootSpawnPoint = {
		OnItemGripped = function(func)
		-- Params: GrippingController, GripInformation --
		RegisterHook("/Script/IntoTheRadius2.LootSpawnPoint:OnItemGripped", func)
		end,
	},
	LostAndFound = {
		OnItemGripped = function(func)
		-- Params: GrippingController, GripInformation --
		RegisterHook("/Script/IntoTheRadius2.LostAndFound:OnItemGripped", func)
		end,
	},
	RadiusAICharacterBase = {
		OnDeath = function(func)
		-- Params: DeathInstigator, DiedPawn --
		RegisterHook("/Script/IntoTheRadius2.RadiusAICharacterBase:OnDeath", func)
		end,
	},
	RadiusAIControllerBase = {
		OnVisibleNpcDeath = function(func)
		-- Params: DeathInstigator, DiedNPC --
		RegisterHook("/Script/IntoTheRadius2.RadiusAIControllerBase:OnVisibleNpcDeath", func)
		end,
		OnTargetDeath = function(func)
		-- Params: Target --
		RegisterHook("/Script/IntoTheRadius2.RadiusAIControllerBase:OnTargetDeath", func)
		end,
		OnPerceptionUpdated = function(func)
		-- Params: Target, Stimulus --
		RegisterHook("/Script/IntoTheRadius2.RadiusAIControllerBase:OnPerceptionUpdated", func)
		end,
		OnAggroReductionStarted = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusAIControllerBase:OnAggroReductionStarted", func)
		end,
	},
	RadiusBulletProjectile = {
		OnSpawnImpact = function(func)
		-- Params: Hit, ShotDistance, Scale, IsCritical, IsArmor --
		RegisterHook("/Script/IntoTheRadius2.RadiusBulletProjectile:OnSpawnImpact", func)
		end,
		OnHit = function(func)
		-- Params: Hit --
		RegisterHook("/Script/IntoTheRadius2.RadiusBulletProjectile:OnHit", func)
		end,
	},
	RadiusFirearmBase = {
		OnHolsteredItemChanged = function(func)
		-- Params: HolsterComponent, RadiusItem, bHasAttached --
		RegisterHook("/Script/IntoTheRadius2.RadiusFirearmBase:OnHolsteredItemChanged", func)
		end,
	},
	RadiusGameDataReplicator = {
		OnRep_Money = function(func)
		-- Params: OldMoney --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameDataReplicator:OnRep_Money", func)
		end,
		OnRep_LastTideTicks = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameDataReplicator:OnRep_LastTideTicks", func)
		end,
		OnRep_GlobalTriggers = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameDataReplicator:OnRep_GlobalTriggers", func)
		end,
		OnRep_GameTicks = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameDataReplicator:OnRep_GameTicks", func)
		end,
		OnRep_AvailableMissionList = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameDataReplicator:OnRep_AvailableMissionList", func)
		end,
		OnRep_Ashes = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameDataReplicator:OnRep_Ashes", func)
		end,
		OnRep_AccessLvlPoints = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameDataReplicator:OnRep_AccessLvlPoints", func)
		end,
		OnRep_AccessLevel = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameDataReplicator:OnRep_AccessLevel", func)
		end,
	},
	RadiusGameMode = {
		OnLoadLevel = function(func)
		-- Params: LevelTag --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameMode:OnLoadLevel", func)
		end,
		OnLevelLoaded = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameMode:OnLevelLoaded", func)
		end,
	},
	RadiusHolder = {
		OnDataUnlinking = function(func)
		-- Params: PreviousDynamicData --
		RegisterHook("/Script/IntoTheRadius2.RadiusHolder:OnDataUnlinking", func)
		end,
	},
	RadiusItemBase = {
		OnParenIDReplicated = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemBase:OnParenIDReplicated", func)
		end,
		OnDataUnlinking = function(func)
		-- Params: PreviousData --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemBase:OnDataUnlinking", func)
		end,
		OnDataLinked = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemBase:OnDataLinked", func)
		end,
	},
	RadiusNonHumanAICharacter = {
		OnRep_AnimationState = function(func)
		-- Params: NewAnimationTag --
		RegisterHook("/Script/IntoTheRadius2.RadiusNonHumanAICharacter:OnRep_AnimationState", func)
		end,
		OnDeath = function(func)
		-- Params: DeathInstigator, DiedNPC --
		RegisterHook("/Script/IntoTheRadius2.RadiusNonHumanAICharacter:OnDeath", func)
		end,
	},
	RadiusPlayerCharacter = {
		OnTeleported = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusPlayerCharacter:OnTeleported", func)
		end,
		OnPlayerStateSet = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusPlayerCharacter:OnPlayerStateSet", func)
		end,
	},
	RadiusPlayerCharacterGameplay = {
		OnPossessed = function(func)
		-- Params: Pawn --
		RegisterHook("/Script/IntoTheRadius2.RadiusPlayerCharacterGameplay:OnPossessed", func)
		end,
	},
	RadiusPlayerController = {
		OnPostPossess = function(func)
		-- Params: P --
		RegisterHook("/Script/IntoTheRadius2.RadiusPlayerController:OnPostPossess", func)
		end,
	},
	RadiusPlayerState = {
		OnRep_PlayerHeight = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusPlayerState:OnRep_PlayerHeight", func)
		end,
	},
	RadiusTimeController = {
		OnGameTimeRefresh = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusTimeController:OnGameTimeRefresh", func)
		end,
		OnGameTimeChanged = function(func)
		-- Params: AddedSeconds --
		RegisterHook("/Script/IntoTheRadius2.RadiusTimeController:OnGameTimeChanged", func)
		end,
	},
	ItemContainerInterface = {
		ShouldChangeCollisionOnAttach = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.ItemContainerInterface:ShouldChangeCollisionOnAttach", func)
		end,
	},
	RadiusItemInterface = {
		OnHolstered = function(func)
		-- Params: Holster --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemInterface:OnHolstered", func)
		end,
		CreateBlockedDynamicDataOnGrip = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemInterface:CreateBlockedDynamicDataOnGrip", func)
		end,
		BlockCreatingDynamicDataOnGrip = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemInterface:BlockCreatingDynamicDataOnGrip", func)
		end,
	},
	RadiusPooledObjectInterface = {
		OnPushToPool = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusPooledObjectInterface:OnPushToPool", func)
		end,
		OnPopFromPool = function(func)
		-- Params: Transform --
		RegisterHook("/Script/IntoTheRadius2.RadiusPooledObjectInterface:OnPopFromPool", func)
		end,
	},
	AIActionRenderComponent = {
		OnRep_ActionRenderInfo = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.AIActionRenderComponent:OnRep_ActionRenderInfo", func)
		end,
	},
	AvailableMission = {
		OnRep_CurrentObjectiveIndex = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.AvailableMission:OnRep_CurrentObjectiveIndex", func)
		end,
		OnRep_bIsActivated = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.AvailableMission:OnRep_bIsActivated", func)
		end,
		OnObjectiveCompleted = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.AvailableMission:OnObjectiveCompleted", func)
		end,
		OnInventoryChanged = function(func)
		-- Params: PlayerContainerUID --
		RegisterHook("/Script/IntoTheRadius2.AvailableMission:OnInventoryChanged", func)
		end,
	},
	FLSpawn = {
		ProjectTransformOnGround = function(func)
		-- Params: WorldContextObject, Transform --
		RegisterHook("/Script/IntoTheRadius2.FLSpawn:ProjectTransformOnGround", func)
		end,
		ProjectPointOnGround = function(func)
		-- Params: WorldContextObject, Location --
		RegisterHook("/Script/IntoTheRadius2.FLSpawn:ProjectPointOnGround", func)
		end,
	},
	HealthComponent = {
		OnAnyDamageTaken = function(func)
		-- Params: Actor, Damage, DamageType, InstigatedBy, DamageCauser --
		RegisterHook("/Script/IntoTheRadius2.HealthComponent:OnAnyDamageTaken", func)
		end,
	},
	MissionObjective_GetItems = {
		OnInventoryChanged = function(func)
		-- Params: PlayerContainerUID --
		RegisterHook("/Script/IntoTheRadius2.MissionObjective_GetItems:OnInventoryChanged", func)
		end,
	},
	PlayerGripComponent = {
		OnClimbingInitiated__DelegateSignature = function(func)
		-- Params: Hand, GrippedObject, RelativeTransform --
		RegisterHook("/Script/IntoTheRadius2.PlayerGripComponent:OnClimbingInitiated__DelegateSignature", func)
		end,
		OnClimbingEnded__DelegateSignature = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.PlayerGripComponent:OnClimbingEnded__DelegateSignature", func)
		end,
	},
	PlayerStatsComponent = {
		OnRep_CurrentStamina = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.PlayerStatsComponent:OnRep_CurrentStamina", func)
		end,
		OnRep_CurrentHunger = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.PlayerStatsComponent:OnRep_CurrentHunger", func)
		end,
		OnRep_CurrentHealth = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.PlayerStatsComponent:OnRep_CurrentHealth", func)
		end,
		OnLevelLoadedStep = function(func)
		-- Params: Step --
		RegisterHook("/Script/IntoTheRadius2.PlayerStatsComponent:OnLevelLoadedStep", func)
		end,
		OnDifficultyOptionChanged = function(func)
		-- Params: OptionTag, ValueTag --
		RegisterHook("/Script/IntoTheRadius2.PlayerStatsComponent:OnDifficultyOptionChanged", func)
		end,
		OnAnyDamageTaken = function(func)
		-- Params: Actor, Damage, DamageType, InstigatedBy, DamageCauser --
		RegisterHook("/Script/IntoTheRadius2.PlayerStatsComponent:OnAnyDamageTaken", func)
		end,
		Client_OnWeightRecalculated = function(func)
		-- Params: ChangedPlayerContainerID --
		RegisterHook("/Script/IntoTheRadius2.PlayerStatsComponent:Client_OnWeightRecalculated", func)
		end,
	},
	RadiusCrashAnalyticsSubsystem = {
		OnSettingsChanged = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusCrashAnalyticsSubsystem:OnSettingsChanged", func)
		end,
		OnLevelLoaded = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusCrashAnalyticsSubsystem:OnLevelLoaded", func)
		end,
	},
	RadiusDataComponent = {
		OnRep_ItemDynamicDataPtr = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusDataComponent:OnRep_ItemDynamicDataPtr", func)
		end,
		OnHolsteredItemChanged = function(func)
		-- Params: HolsterComponent, RadiusItem, bHasAttached --
		RegisterHook("/Script/IntoTheRadius2.RadiusDataComponent:OnHolsteredItemChanged", func)
		end,
	},
	RadiusDifficultySettingsSubsystem = {
		GetShowPlayersOnMap = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusDifficultySettingsSubsystem:GetShowPlayersOnMap", func)
		end,
		GetItemsDroppedOnDeath = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusDifficultySettingsSubsystem:GetItemsDroppedOnDeath", func)
		end,
	},
	RadiusEventsSubsystem = {
		FireOnTutorialStarted = function(func)
		-- Params: TutorialTag --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnTutorialStarted", func)
		end,
		FireOnTutorialFinished = function(func)
		-- Params: TutorialID, CompletedStepsNum, Seconds, IsTutorialSkipped --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnTutorialFinished", func)
		end,
		FireOnStartLoadLevel = function(func)
		-- Params: LevelTag --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnStartLoadLevel", func)
		end,
		FireOnSplashScreenShown = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnSplashScreenShown", func)
		end,
		FireOnSleep = function(func)
		-- Params: Location --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnSleep", func)
		end,
		FireOnSettingsChanged = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnSettingsChanged", func)
		end,
		FireOnReplicatorCreated = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnReplicatorCreated", func)
		end,
		FireOnPlayerRunning = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnPlayerRunning", func)
		end,
		FireOnPlayerKill = function(func)
		-- Params: NPCTag, Weapon, NPCLocation, DistanceToNPC --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnPlayerKill", func)
		end,
		FireOnPlayerInventoryChanged = function(func)
		-- Params: PlayerUID --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnPlayerInventoryChanged", func)
		end,
		FireOnPlayerDisconnected = function(func)
		-- Params: UniqueNetId --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnPlayerDisconnected", func)
		end,
		FireOnPlayerDeathPointsChanged = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnPlayerDeathPointsChanged", func)
		end,
		FireOnPlayerConnected = function(func)
		-- Params: UniqueNetId --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnPlayerConnected", func)
		end,
		FireOnMissionStarted = function(func)
		-- Params: Mission --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnMissionStarted", func)
		end,
		FireOnMissionListUpdate = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnMissionListUpdate", func)
		end,
		FireOnMissionFinished = function(func)
		-- Params: Mission, State, CurrentObjectiveIndex --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnMissionFinished", func)
		end,
		FireOnMainMenuLoaded = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnMainMenuLoaded", func)
		end,
		FireOnLvlPointsChanged = function(func)
		-- Params: NewLvlPoints --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnLvlPointsChanged", func)
		end,
		FireOnLoadLevelStep = function(func)
		-- Params: Step --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnLoadLevelStep", func)
		end,
		FireOnIngameMenuOpened = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnIngameMenuOpened", func)
		end,
		FireOnIngameMenuClosed = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnIngameMenuClosed", func)
		end,
		FireOnHostGame = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnHostGame", func)
		end,
		FireOnGlobalTriggersChange = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnGlobalTriggersChange", func)
		end,
		FireOnGameStart = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnGameStart", func)
		end,
		FireOnGameDataSaved = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnGameDataSaved", func)
		end,
		FireOnGameDataLoaded = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnGameDataLoaded", func)
		end,
		FireOnFirstPlayerEnteredShop = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnFirstPlayerEnteredShop", func)
		end,
		FireOnFinishLoadLevel = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnFinishLoadLevel", func)
		end,
		FireOnDifficultyOptionChanged = function(func)
		-- Params: OptionTag, ValueTag --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnDifficultyOptionChanged", func)
		end,
		FireOnCoopVersionsMismatch = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnCoopVersionsMismatch", func)
		end,
		FireOnCommonGameDataSaved = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnCommonGameDataSaved", func)
		end,
		FireOnCommonGameDataLoaded = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnCommonGameDataLoaded", func)
		end,
		FireOnArtefactNestSpawned = function(func)
		-- Params: Nest --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnArtefactNestSpawned", func)
		end,
		FireOnArtefactNestDestroyed = function(func)
		-- Params: Nest --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnArtefactNestDestroyed", func)
		end,
		FireOnAccessLevelChanged = function(func)
		-- Params: NewLevel --
		RegisterHook("/Script/IntoTheRadius2.RadiusEventsSubsystem:FireOnAccessLevelChanged", func)
		end,
	},
	RadiusFirearmComponent = {
		OnRep_bHasShootInput = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusFirearmComponent:OnRep_bHasShootInput", func)
		end,
		OnItemAdditionalTagChanged = function(func)
		-- Params: Tag, bAdded --
		RegisterHook("/Script/IntoTheRadius2.RadiusFirearmComponent:OnItemAdditionalTagChanged", func)
		end,
		OnDynamicDataUnlinked = function(func)
		-- Params: PreviousDynamicData --
		RegisterHook("/Script/IntoTheRadius2.RadiusFirearmComponent:OnDynamicDataUnlinked", func)
		end,
		OnDynamicDataLinked = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusFirearmComponent:OnDynamicDataLinked", func)
		end,
		OnBeginOverlap = function(func)
		-- Params: OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, HitResult --
		RegisterHook("/Script/IntoTheRadius2.RadiusFirearmComponent:OnBeginOverlap", func)
		end,
		IsOnSafety = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusFirearmComponent:IsOnSafety", func)
		end,
	},
	RadiusGameDataSubsystem = {
		OnFirstGameDataLevelLoaded = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameDataSubsystem:OnFirstGameDataLevelLoaded", func)
		end,
	},
	RadiusGameInstance = {
		OnLevelLoaded = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameInstance:OnLevelLoaded", func)
		end,
		OnGameStart = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameInstance:OnGameStart", func)
		end,
	},
	RadiusGameInstanceSubsystem = {
		OnStart = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameInstanceSubsystem:OnStart", func)
		end,
		OnShutdown = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusGameInstanceSubsystem:OnShutdown", func)
		end,
	},
	RadiusHolsterComponent = {
		OnRep_HolsteredActor = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusHolsterComponent:OnRep_HolsteredActor", func)
		end,
		OnEndOverlapCustomCollision = function(func)
		-- Params: OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex --
		RegisterHook("/Script/IntoTheRadius2.RadiusHolsterComponent:OnEndOverlapCustomCollision", func)
		end,
		OnDataUnlinking = function(func)
		-- Params: PreviousDynamicData --
		RegisterHook("/Script/IntoTheRadius2.RadiusHolsterComponent:OnDataUnlinking", func)
		end,
		OnBeginOverlapCustomCollision = function(func)
		-- Params: OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult --
		RegisterHook("/Script/IntoTheRadius2.RadiusHolsterComponent:OnBeginOverlapCustomCollision", func)
		end,
	},
	RadiusInputModifier_TurnDeadZone = {
		OnSettingsChanged = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusInputModifier_TurnDeadZone:OnSettingsChanged", func)
		end,
	},
	RadiusItemConditionalComponent = {
		OnDataUnlinking = function(func)
		-- Params: PreviousDynamicData --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemConditionalComponent:OnDataUnlinking", func)
		end,
		OnDataLinked = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemConditionalComponent:OnDataLinked", func)
		end,
		OnAdditionalTagChanged = function(func)
		-- Params: Tag, bAdded --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemConditionalComponent:OnAdditionalTagChanged", func)
		end,
	},
	RadiusItemDynamicData = {
		OnRep_ParentContainerUid = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemDynamicData:OnRep_ParentContainerUid", func)
		end,
		OnRep_Durability = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemDynamicData:OnRep_Durability", func)
		end,
		OnRep_ContainingItemTagsStack = function(func)
		-- Params: PreviousStack --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemDynamicData:OnRep_ContainingItemTagsStack", func)
		end,
		OnRep_AdditionalTags = function(func)
		-- Params: PreviousTags --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemDynamicData:OnRep_AdditionalTags", func)
		end,
	},
	RadiusItemStackComponent = {
		OnRep_ExtractedItem = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemStackComponent:OnRep_ExtractedItem", func)
		end,
		OnExtractedItem = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemStackComponent:OnExtractedItem", func)
		end,
		OnDataUnlinked = function(func)
		-- Params: PreviousDynamicData --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemStackComponent:OnDataUnlinked", func)
		end,
		OnDataLinked = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemStackComponent:OnDataLinked", func)
		end,
		FireOnStackChanged = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusItemStackComponent:FireOnStackChanged", func)
		end,
	},
	RadiusLevelSubsystem = {
		OnLevelLoaded_DoAutosave = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusLevelSubsystem:OnLevelLoaded_DoAutosave", func)
		end,
	},
	RadiusLightComponent = {
		OnItemTagChanged = function(func)
		-- Params: Tag, bAdded --
		RegisterHook("/Script/IntoTheRadius2.RadiusLightComponent:OnItemTagChanged", func)
		end,
		OnItemDataUnlink = function(func)
		-- Params: PreviousDynamicData --
		RegisterHook("/Script/IntoTheRadius2.RadiusLightComponent:OnItemDataUnlink", func)
		end,
		OnItemDataLink = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusLightComponent:OnItemDataLink", func)
		end,
	},
	RadiusMissionObjectiveBase = {
		OnRep_OwningMission = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusMissionObjectiveBase:OnRep_OwningMission", func)
		end,
	},
	RadiusPhysicalHand = {
		OnLerpToHandFinish = function(func)
		-- Params: GripInfo --
		RegisterHook("/Script/IntoTheRadius2.RadiusPhysicalHand:OnLerpToHandFinish", func)
		end,
		OnGrippedSecondary = function(func)
		-- Params: GripInfo --
		RegisterHook("/Script/IntoTheRadius2.RadiusPhysicalHand:OnGrippedSecondary", func)
		end,
		OnGripped = function(func)
		-- Params: GripInfo --
		RegisterHook("/Script/IntoTheRadius2.RadiusPhysicalHand:OnGripped", func)
		end,
		OnDroppedSecondary = function(func)
		-- Params: GripInfo --
		RegisterHook("/Script/IntoTheRadius2.RadiusPhysicalHand:OnDroppedSecondary", func)
		end,
		OnDropped = function(func)
		-- Params: GripInfo, bWasSocketed --
		RegisterHook("/Script/IntoTheRadius2.RadiusPhysicalHand:OnDropped", func)
		end,
	},
	RadiusPlayerMovementComponent = {
		OnWeightRecalculateEvent = function(func)
		-- Params: ChangedPlayerContainerID --
		RegisterHook("/Script/IntoTheRadius2.RadiusPlayerMovementComponent:OnWeightRecalculateEvent", func)
		end,
	},
	RadiusRadioComponent = {
		OnRep_bIsTalkingInRadio = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusRadioComponent:OnRep_bIsTalkingInRadio", func)
		end,
	},
	RadiusSettingsSubsystem = {
		TabletOnLeft = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:TabletOnLeft", func)
		end,
		SetTabletOnLeft = function(func)
		-- Params: bValue --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:SetTabletOnLeft", func)
		end,
		SetSubtitlesOn = function(func)
		-- Params: bIsOn --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:SetSubtitlesOn", func)
		end,
		SetIsVignetteOnTurnEnabled = function(func)
		-- Params: bIsEnabled --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:SetIsVignetteOnTurnEnabled", func)
		end,
		SetIsVignetteOnRunEnabled = function(func)
		-- Params: bIsEnabled --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:SetIsVignetteOnRunEnabled", func)
		end,
		SetBraceletOnLeft = function(func)
		-- Params: bValue --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:SetBraceletOnLeft", func)
		end,
		SetBackpackOnLeft = function(func)
		-- Params: bValue --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:SetBackpackOnLeft", func)
		end,
		IsVirtualStockOn = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:IsVirtualStockOn", func)
		end,
		IsVignetteOnTurnEnabled = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:IsVignetteOnTurnEnabled", func)
		end,
		IsVignetteOnRunEnabled = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:IsVignetteOnRunEnabled", func)
		end,
		IsSubtitlesOn = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:IsSubtitlesOn", func)
		end,
		IsHighlightDroppedItemsOn = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:IsHighlightDroppedItemsOn", func)
		end,
		BraceletOnLeft = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:BraceletOnLeft", func)
		end,
		BackpackOnLeft = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusSettingsSubsystem:BackpackOnLeft", func)
		end,
	},
	RadiusSliderComponent = {
		OnRep_InitialRelativeTransform = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusSliderComponent:OnRep_InitialRelativeTransform", func)
		end,
	},
	RadiusSpawnControlSubsystem = {
		OnTideEvent = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusSpawnControlSubsystem:OnTideEvent", func)
		end,
		OnMissionFinished = function(func)
		-- Params: Mission, State, CurrentObjectiveIndex --
		RegisterHook("/Script/IntoTheRadius2.RadiusSpawnControlSubsystem:OnMissionFinished", func)
		end,
		OnLoadLevel = function(func)
		-- Params: LevelTag --
		RegisterHook("/Script/IntoTheRadius2.RadiusSpawnControlSubsystem:OnLoadLevel", func)
		end,
		OnLevelLoaded = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusSpawnControlSubsystem:OnLevelLoaded", func)
		end,
		OnGlobalTriggersChange = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusSpawnControlSubsystem:OnGlobalTriggersChange", func)
		end,
		OnAccessLevelOrPointsChanged = function(func)
		-- Params: LevelOrPoints --
		RegisterHook("/Script/IntoTheRadius2.RadiusSpawnControlSubsystem:OnAccessLevelOrPointsChanged", func)
		end,
	},
	RadiusWidgetComponent = {
		OnPlayerPossessedPawn = function(func)
		-- Params: PlayerPawn --
		RegisterHook("/Script/IntoTheRadius2.RadiusWidgetComponent:OnPlayerPossessedPawn", func)
		end,
		OnPlayerDied = function(func)
		-- Params: PlayerPawn, DamageCauser --
		RegisterHook("/Script/IntoTheRadius2.RadiusWidgetComponent:OnPlayerDied", func)
		end,
		OnIngameMenuOpened = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusWidgetComponent:OnIngameMenuOpened", func)
		end,
		OnIngameMenuClosed = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.RadiusWidgetComponent:OnIngameMenuClosed", func)
		end,
	},
	RadiusWidgetInteractionComponent = {
		OnEndOverlapUiCollision = function(func)
		-- Params: OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex --
		RegisterHook("/Script/IntoTheRadius2.RadiusWidgetInteractionComponent:OnEndOverlapUiCollision", func)
		end,
		OnBeginOverlapUiCollision = function(func)
		-- Params: OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult --
		RegisterHook("/Script/IntoTheRadius2.RadiusWidgetInteractionComponent:OnBeginOverlapUiCollision", func)
		end,
	},
	ResourceComponent = {
		OnRep_ResourceAmount = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.ResourceComponent:OnRep_ResourceAmount", func)
		end,
	},
	SyncTransformComponent = {
		OnWake = function(func)
		-- Params: WakingComponent, BoneName --
		RegisterHook("/Script/IntoTheRadius2.SyncTransformComponent:OnWake", func)
		end,
		OnSwitchLoadingScreen = function(func)
		-- Params: bShow --
		RegisterHook("/Script/IntoTheRadius2.SyncTransformComponent:OnSwitchLoadingScreen", func)
		end,
		OnSleep = function(func)
		-- Params: WakingComponent, BoneName --
		RegisterHook("/Script/IntoTheRadius2.SyncTransformComponent:OnSleep", func)
		end,
		OnRep_SyncTransform = function(func)
		-- Params:  --
		RegisterHook("/Script/IntoTheRadius2.SyncTransformComponent:OnRep_SyncTransform", func)
		end,
		OnOwnerHolstered = function(func)
		-- Params: HolsterComponent --
		RegisterHook("/Script/IntoTheRadius2.SyncTransformComponent:OnOwnerHolstered", func)
		end,
		OnOwnerGripped = function(func)
		-- Params: GrippingController, GripInformation --
		RegisterHook("/Script/IntoTheRadius2.SyncTransformComponent:OnOwnerGripped", func)
		end,
		OnDistanceGripChanged = function(func)
		-- Params: bIsDistanceLerping --
		RegisterHook("/Script/IntoTheRadius2.SyncTransformComponent:OnDistanceGripChanged", func)
		end,
	},
}
return Events