.class public Lcom/microsoft/appcenter/ingestion/models/Device;
.super Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
.source "Device.java"


# static fields
.field private static final APP_BUILD:Ljava/lang/String; = "appBuild"

.field private static final APP_NAMESPACE:Ljava/lang/String; = "appNamespace"

.field private static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final CARRIER_COUNTRY:Ljava/lang/String; = "carrierCountry"

.field private static final CARRIER_NAME:Ljava/lang/String; = "carrierName"

.field private static final LOCALE:Ljava/lang/String; = "locale"

.field private static final MODEL:Ljava/lang/String; = "model"

.field private static final OEM_NAME:Ljava/lang/String; = "oemName"

.field private static final OS_API_LEVEL:Ljava/lang/String; = "osApiLevel"

.field private static final OS_BUILD:Ljava/lang/String; = "osBuild"

.field private static final OS_NAME:Ljava/lang/String; = "osName"

.field private static final OS_VERSION:Ljava/lang/String; = "osVersion"

.field private static final SCREEN_SIZE:Ljava/lang/String; = "screenSize"

.field private static final SDK_NAME:Ljava/lang/String; = "sdkName"

.field private static final SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final TIME_ZONE_OFFSET:Ljava/lang/String; = "timeZoneOffset"


# instance fields
.field private appBuild:Ljava/lang/String;

.field private appNamespace:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private carrierCountry:Ljava/lang/String;

.field private carrierName:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private oemName:Ljava/lang/String;

.field private osApiLevel:Ljava/lang/Integer;

.field private osBuild:Ljava/lang/String;

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private screenSize:Ljava/lang/String;

.field private sdkName:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private timeZoneOffset:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 467
    const/4 v3, 0x1

    move v0, v3

    .line 521
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    :goto_0
    return v0

    .line 469
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 470
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 472
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 473
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 475
    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/Device;

    move-object v2, v3

    .line 476
    .local v2, "device":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkName:Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 477
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 476
    :cond_5
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 479
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkVersion:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkVersion:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 480
    :cond_7
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 479
    :cond_8
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkVersion:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 482
    :cond_9
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->model:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->model:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->model:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 483
    :cond_a
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 482
    :cond_b
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->model:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 485
    :cond_c
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->oemName:Ljava/lang/String;

    if-eqz v3, :cond_e

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->oemName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->oemName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 486
    :cond_d
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 485
    :cond_e
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->oemName:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 488
    :cond_f
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osName:Ljava/lang/String;

    if-eqz v3, :cond_11

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->osName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 489
    :cond_10
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 488
    :cond_11
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osName:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 491
    :cond_12
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osVersion:Ljava/lang/String;

    if-eqz v3, :cond_14

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osVersion:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->osVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 492
    :cond_13
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 491
    :cond_14
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osVersion:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 494
    :cond_15
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osBuild:Ljava/lang/String;

    if-eqz v3, :cond_17

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osBuild:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->osBuild:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 495
    :cond_16
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 494
    :cond_17
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osBuild:Ljava/lang/String;

    if-nez v3, :cond_16

    .line 497
    :cond_18
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osApiLevel:Ljava/lang/Integer;

    if-eqz v3, :cond_1a

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osApiLevel:Ljava/lang/Integer;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->osApiLevel:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 498
    :cond_19
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 497
    :cond_1a
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osApiLevel:Ljava/lang/Integer;

    if-nez v3, :cond_19

    .line 500
    :cond_1b
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->locale:Ljava/lang/String;

    if-eqz v3, :cond_1d

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->locale:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->locale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 501
    :cond_1c
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 500
    :cond_1d
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->locale:Ljava/lang/String;

    if-nez v3, :cond_1c

    .line 503
    :cond_1e
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->timeZoneOffset:Ljava/lang/Integer;

    if-eqz v3, :cond_20

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->timeZoneOffset:Ljava/lang/Integer;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->timeZoneOffset:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 504
    :cond_1f
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 503
    :cond_20
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->timeZoneOffset:Ljava/lang/Integer;

    if-nez v3, :cond_1f

    .line 506
    :cond_21
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->screenSize:Ljava/lang/String;

    if-eqz v3, :cond_23

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->screenSize:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->screenSize:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 507
    :cond_22
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 506
    :cond_23
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->screenSize:Ljava/lang/String;

    if-nez v3, :cond_22

    .line 509
    :cond_24
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appVersion:Ljava/lang/String;

    if-eqz v3, :cond_26

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appVersion:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->appVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 510
    :cond_25
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 509
    :cond_26
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appVersion:Ljava/lang/String;

    if-nez v3, :cond_25

    .line 512
    :cond_27
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierName:Ljava/lang/String;

    if-eqz v3, :cond_29

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 513
    :cond_28
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 512
    :cond_29
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierName:Ljava/lang/String;

    if-nez v3, :cond_28

    .line 515
    :cond_2a
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierCountry:Ljava/lang/String;

    if-eqz v3, :cond_2c

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierCountry:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 516
    :cond_2b
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 515
    :cond_2c
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierCountry:Ljava/lang/String;

    if-nez v3, :cond_2b

    .line 518
    :cond_2d
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appBuild:Ljava/lang/String;

    if-eqz v3, :cond_2f

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appBuild:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->appBuild:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 519
    :cond_2e
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 518
    :cond_2f
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appBuild:Ljava/lang/String;

    if-nez v3, :cond_2e

    .line 521
    :cond_30
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appNamespace:Ljava/lang/String;

    if-eqz v3, :cond_31

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appNamespace:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/Device;->appNamespace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_31
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appNamespace:Ljava/lang/String;

    if-nez v3, :cond_32

    const/4 v3, 0x1

    goto :goto_1

    :cond_32
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAppBuild()Ljava/lang/String;
    .locals 2

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->appBuild:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getAppNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->appNamespace:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->appVersion:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getCarrierCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierCountry:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->locale:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->model:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getOemName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->oemName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getOsApiLevel()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->osApiLevel:Ljava/lang/Integer;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getOsBuild()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->osBuild:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->osName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->osVersion:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->screenSize:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getSdkName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkVersion:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public getTimeZoneOffset()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/Device;->timeZoneOffset:Ljava/lang/Integer;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v2, v0

    invoke-super {v2}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->hashCode()I

    move-result v2

    move v1, v2

    .line 527
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 528
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkVersion:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 529
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->model:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->model:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 530
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->oemName:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->oemName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 531
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osName:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v2, v3

    move v1, v2

    .line 532
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osVersion:Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    move v1, v2

    .line 533
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osBuild:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osBuild:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v2, v3

    move v1, v2

    .line 534
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osApiLevel:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->osApiLevel:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v2, v3

    move v1, v2

    .line 535
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->locale:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->locale:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v2, v3

    move v1, v2

    .line 536
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->timeZoneOffset:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->timeZoneOffset:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v2, v3

    move v1, v2

    .line 537
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->screenSize:Ljava/lang/String;

    if-eqz v3, :cond_a

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->screenSize:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v2, v3

    move v1, v2

    .line 538
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appVersion:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v2, v3

    move v1, v2

    .line 539
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierName:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v2, v3

    move v1, v2

    .line 540
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierCountry:Ljava/lang/String;

    if-eqz v3, :cond_d

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierCountry:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v2, v3

    move v1, v2

    .line 541
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appBuild:Ljava/lang/String;

    if-eqz v3, :cond_e

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appBuild:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e
    add-int/2addr v2, v3

    move v1, v2

    .line 542
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appNamespace:Ljava/lang/String;

    if-eqz v3, :cond_f

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/Device;->appNamespace:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v2, v3

    move v1, v2

    .line 543
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    return v0

    .line 527
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 528
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 529
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 530
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 531
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 532
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 533
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 534
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 535
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 536
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 537
    :cond_a
    const/4 v3, 0x0

    goto :goto_a

    .line 538
    :cond_b
    const/4 v3, 0x0

    goto :goto_b

    .line 539
    :cond_c
    const/4 v3, 0x0

    goto :goto_c

    .line 540
    :cond_d
    const/4 v3, 0x0

    goto :goto_d

    .line 541
    :cond_e
    const/4 v3, 0x0

    goto :goto_e

    .line 542
    :cond_f
    const/4 v3, 0x0

    goto :goto_f
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->read(Lorg/json/JSONObject;)V

    .line 424
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "sdkName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setSdkName(Ljava/lang/String;)V

    .line 425
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "sdkVersion"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setSdkVersion(Ljava/lang/String;)V

    .line 426
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "model"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setModel(Ljava/lang/String;)V

    .line 427
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "oemName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setOemName(Ljava/lang/String;)V

    .line 428
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "osName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setOsName(Ljava/lang/String;)V

    .line 429
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "osVersion"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setOsVersion(Ljava/lang/String;)V

    .line 430
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "osBuild"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setOsBuild(Ljava/lang/String;)V

    .line 431
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "osApiLevel"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setOsApiLevel(Ljava/lang/Integer;)V

    .line 432
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "locale"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setLocale(Ljava/lang/String;)V

    .line 433
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "timeZoneOffset"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setTimeZoneOffset(Ljava/lang/Integer;)V

    .line 434
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "screenSize"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setScreenSize(Ljava/lang/String;)V

    .line 435
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "appVersion"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setAppVersion(Ljava/lang/String;)V

    .line 436
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "carrierName"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setCarrierName(Ljava/lang/String;)V

    .line 437
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "carrierCountry"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setCarrierCountry(Ljava/lang/String;)V

    .line 438
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "appBuild"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setAppBuild(Ljava/lang/String;)V

    .line 439
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "appNamespace"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->setAppNamespace(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public setAppBuild(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "appBuild":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->appBuild:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public setAppNamespace(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "appNamespace":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->appNamespace:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "appVersion":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->appVersion:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setCarrierCountry(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "carrierCountry":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierCountry:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setCarrierName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "carrierName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->carrierName:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "locale":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->locale:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "model":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->model:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setOemName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "oemName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->oemName:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setOsApiLevel(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "osApiLevel":Ljava/lang/Integer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->osApiLevel:Ljava/lang/Integer;

    .line 275
    return-void
.end method

.method public setOsBuild(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "osBuild":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->osBuild:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "osName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->osName:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "osVersion":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->osVersion:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "screenSize":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->screenSize:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setSdkName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "sdkName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkName:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "sdkVersion":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->sdkVersion:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setTimeZoneOffset(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "timeZoneOffset":Ljava/lang/Integer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/Device;->timeZoneOffset:Ljava/lang/Integer;

    .line 311
    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->write(Lorg/json/JSONStringer;)V

    .line 445
    move-object v2, v1

    const-string/jumbo v3, "sdkName"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->getSdkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 446
    move-object v2, v1

    const-string/jumbo v3, "sdkVersion"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 447
    move-object v2, v1

    const-string/jumbo v3, "model"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 448
    move-object v2, v1

    const-string/jumbo v3, "oemName"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->getOemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 449
    move-object v2, v1

    const-string/jumbo v3, "osName"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->getOsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 450
    move-object v2, v1

    const-string/jumbo v3, "osVersion"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 451
    move-object v2, v1

    const-string/jumbo v3, "osBuild"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/Device;->getOsBuild()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 452
    move-object v2, v1

    const-string/jumbo v3, "osApiLevel"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/Device;->getOsApiLevel()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    move-object v2, v1

    const-string/jumbo v3, "locale"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 454
    move-object v2, v1

    const-string/jumbo v3, "timeZoneOffset"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->getTimeZoneOffset()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 455
    move-object v2, v1

    const-string/jumbo v3, "screenSize"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->getScreenSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 456
    move-object v2, v1

    const-string/jumbo v3, "appVersion"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 457
    move-object v2, v1

    const-string/jumbo v3, "carrierName"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/Device;->getCarrierName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 458
    move-object v2, v1

    const-string/jumbo v3, "carrierCountry"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/Device;->getCarrierCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 459
    move-object v2, v1

    const-string/jumbo v3, "appBuild"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/Device;->getAppBuild()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 460
    move-object v2, v1

    const-string/jumbo v3, "appNamespace"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/Device;->getAppNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    return-void
.end method
