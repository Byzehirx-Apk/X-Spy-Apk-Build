.class public final enum Lcom/google/appinventor/components/runtime/Player$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/Player$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

.field public static final enum PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

.field public static final enum PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

.field public static final enum PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

.field public static final enum PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/Player$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 79
    new-instance v0, Lcom/google/appinventor/components/runtime/Player$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "INITIAL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    new-instance v0, Lcom/google/appinventor/components/runtime/Player$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "PREPARED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    new-instance v0, Lcom/google/appinventor/components/runtime/Player$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "PLAYING"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    new-instance v0, Lcom/google/appinventor/components/runtime/Player$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "PAUSED_BY_USER"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    new-instance v0, Lcom/google/appinventor/components/runtime/Player$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "PAUSED_BY_EVENT"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/Player$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/Player$State;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/Player$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Player$State;
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    const-class v1, Lcom/google/appinventor/components/runtime/Player$State;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Player$State;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/Player$State;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/Player$State;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/Player$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/Player$State;

    return-object v0
.end method
