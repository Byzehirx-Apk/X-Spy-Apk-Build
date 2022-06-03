.class final Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$5;
.super Ljava/lang/Object;
.source "ErrorLogHelper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredFile(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$extension:Ljava/lang/String;

.field final synthetic val$id:Ljava/util/UUID;


# direct methods
.method constructor <init>(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$5;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$5;->val$id:Ljava/util/UUID;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$5;->val$extension:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$5;
    move-object v1, p1

    .local v1, "dir":Ljava/io/File;
    move-object v2, p2

    .local v2, "filename":Ljava/lang/String;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$5;->val$id:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$5;->val$extension:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$5;
    return v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$5;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
