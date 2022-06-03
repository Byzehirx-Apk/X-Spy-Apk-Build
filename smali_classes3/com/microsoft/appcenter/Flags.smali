.class public final Lcom/microsoft/appcenter/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field public static final CRITICAL:I = 0x2

.field public static final DEFAULTS:I = 0x1

.field public static final NORMAL:I = 0x1

.field public static final PERSISTENCE_CRITICAL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PERSISTENCE_MASK:I = 0xff

.field public static final PERSISTENCE_NORMAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/Flags;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPersistenceFlag(IZ)I
    .locals 7

    .prologue
    .line 57
    move v0, p0

    .local v0, "flags":I
    move v1, p1

    .local v1, "warnFallback":Z
    move v3, v0

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v2, v3

    .line 58
    .local v2, "persistencePriority":I
    move v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    move v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 59
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    if-eqz v3, :cond_0

    .line 60
    const-string/jumbo v3, "AppCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for persistence flag, using NORMAL as a default."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    const/4 v3, 0x1

    move v2, v3

    .line 64
    :cond_1
    move v3, v2

    move v0, v3

    .end local v0    # "flags":I
    return v0
.end method
