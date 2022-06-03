.class public Lcom/microsoft/appcenter/utils/PrefStorageConstants;
.super Ljava/lang/Object;
.source "PrefStorageConstants.java"


# static fields
.field public static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field public static final KEY_INSTALL_ID:Ljava/lang/String; = "installId"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/PrefStorageConstants;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
