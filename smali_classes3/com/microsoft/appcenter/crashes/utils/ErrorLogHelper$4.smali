.class final Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$4;
.super Ljava/lang/Object;
.source "ErrorLogHelper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getLastErrorLogFile()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$4;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$4;
    move-object v1, p1

    .local v1, "dir":Ljava/io/File;
    move-object v2, p2

    .local v2, "filename":Ljava/lang/String;
    move-object v3, v2

    const-string/jumbo v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$4;
    return v0
.end method
