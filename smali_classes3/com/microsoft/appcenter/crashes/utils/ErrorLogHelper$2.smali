.class final Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$2;
.super Ljava/lang/Object;
.source "ErrorLogHelper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredDeviceInfo(Ljava/io/File;)Lcom/microsoft/appcenter/ingestion/models/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$2;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$2;
    move-object v1, p1

    .local v1, "dir":Ljava/io/File;
    move-object v2, p2

    .local v2, "filename":Ljava/lang/String;
    move-object v3, v2

    const-string/jumbo v4, "deviceInfo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$2;
    return v0
.end method
