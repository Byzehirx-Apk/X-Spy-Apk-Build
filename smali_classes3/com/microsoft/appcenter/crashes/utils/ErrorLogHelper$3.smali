.class final Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$3;
.super Ljava/lang/Object;
.source "ErrorLogHelper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->removeStaleMinidumpSubfolders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$3;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$3;
    move-object v1, p1

    .local v1, "dir":Ljava/io/File;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->access$000()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 382
    move-object v3, v2

    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->access$000()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 384
    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$3;
    :goto_1
    return v0

    .line 382
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$3;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 384
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method
