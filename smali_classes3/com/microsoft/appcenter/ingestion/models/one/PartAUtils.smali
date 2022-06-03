.class public Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;
.super Ljava/lang/Object;
.source "PartAUtils.java"


# static fields
.field private static final NAME_REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "^[a-zA-Z0-9]((\\.(?!(\\.|$)))|[_a-zA-Z0-9]){3,99}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->NAME_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPartAFromLog(Lcom/microsoft/appcenter/ingestion/models/Log;Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "src":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object v1, p1

    .local v1, "dest":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v2, p2

    .local v2, "transmissionTarget":Ljava/lang/String;
    move-object v5, v0

    invoke-interface {v5}, Lcom/microsoft/appcenter/ingestion/models/Log;->getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v5

    move-object v3, v5

    .line 67
    .local v3, "device":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v5, v1

    const-string/jumbo v6, "3.0"

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setVer(Ljava/lang/String;)V

    .line 68
    move-object v5, v1

    move-object v6, v0

    invoke-interface {v6}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTimestamp()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setTimestamp(Ljava/util/Date;)V

    .line 71
    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "o:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-static {v7}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->getTargetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setIKey(Ljava/lang/String;)V

    .line 74
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->addTransmissionTarget(Ljava/lang/String;)V

    .line 77
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    if-nez v5, :cond_0

    .line 78
    move-object v5, v1

    new-instance v6, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;-><init>()V

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setExt(Lcom/microsoft/appcenter/ingestion/models/one/Extensions;)V

    .line 82
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    new-instance v6, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;-><init>()V

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setProtocol(Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;)V

    .line 83
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getProtocol()Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lcom/microsoft/appcenter/ingestion/models/Device;->getModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->setDevModel(Ljava/lang/String;)V

    .line 84
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getProtocol()Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lcom/microsoft/appcenter/ingestion/models/Device;->getOemName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/ProtocolExtension;->setDevMake(Ljava/lang/String;)V

    .line 87
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    new-instance v6, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;-><init>()V

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setUser(Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;)V

    .line 88
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getUser()Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    move-result-object v5

    move-object v6, v0

    invoke-interface {v6}, Lcom/microsoft/appcenter/ingestion/models/Log;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getPrefixedUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->setLocalId(Ljava/lang/String;)V

    .line 89
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getUser()Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lcom/microsoft/appcenter/ingestion/models/Device;->getLocale()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "_"

    const-string/jumbo v8, "-"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->setLocale(Ljava/lang/String;)V

    .line 92
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    new-instance v6, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;-><init>()V

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setOs(Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;)V

    .line 93
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getOs()Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lcom/microsoft/appcenter/ingestion/models/Device;->getOsName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->setName(Ljava/lang/String;)V

    .line 94
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getOs()Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v3

    invoke-virtual {v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->getOsBuild()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->getOsApiLevel()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/OsExtension;->setVer(Ljava/lang/String;)V

    .line 98
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    new-instance v6, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;-><init>()V

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setApp(Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;)V

    .line 99
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getApp()Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lcom/microsoft/appcenter/ingestion/models/Device;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setVer(Ljava/lang/String;)V

    .line 100
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getApp()Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "a:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->getAppNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setId(Ljava/lang/String;)V

    .line 104
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    new-instance v6, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;-><init>()V

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setNet(Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;)V

    .line 105
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getNet()Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lcom/microsoft/appcenter/ingestion/models/Device;->getCarrierName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/NetExtension;->setProvider(Ljava/lang/String;)V

    .line 108
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    new-instance v6, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;-><init>()V

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setSdk(Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;)V

    .line 109
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getSdk()Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v3

    invoke-virtual {v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->getSdkName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->getSdkVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/SdkExtension;->setLibVer(Ljava/lang/String;)V

    .line 112
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    new-instance v6, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;-><init>()V

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setLoc(Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;)V

    .line 113
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%s%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v3

    .line 114
    invoke-virtual {v10}, Lcom/microsoft/appcenter/ingestion/models/Device;->getTimeZoneOffset()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ltz v10, :cond_1

    const-string/jumbo v10, "+"

    :goto_0
    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-object v10, v3

    .line 115
    invoke-virtual {v10}, Lcom/microsoft/appcenter/ingestion/models/Device;->getTimeZoneOffset()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x3c

    div-int/lit8 v10, v10, 0x3c

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x2

    move-object v10, v3

    .line 116
    invoke-virtual {v10}, Lcom/microsoft/appcenter/ingestion/models/Device;->getTimeZoneOffset()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x3c

    rem-int/lit8 v10, v10, 0x3c

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 113
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 117
    .local v4, "timezoneOffset":Ljava/lang/String;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getLoc()Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/LocExtension;->setTz(Ljava/lang/String;)V

    .line 120
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v5

    new-instance v6, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;-><init>()V

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setDevice(Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;)V

    .line 121
    return-void

    .line 114
    .end local v4    # "timezoneOffset":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, "-"

    goto :goto_0
.end method

.method public static getTargetKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "targetToken":Ljava/lang/String;
    move-object v1, v0

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "targetToken":Ljava/lang/String;
    return-object v0
.end method

.method public static setName(Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "log":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 46
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Name cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_0
    sget-object v2, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->NAME_REGEX:Ljava/util/regex/Pattern;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Name must match \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' but was \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setName(Ljava/lang/String;)V

    .line 52
    return-void
.end method
