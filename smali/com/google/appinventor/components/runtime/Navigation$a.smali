.class final enum Lcom/google/appinventor/components/runtime/Navigation$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Navigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/Navigation$a;",
        ">;"
    }
.end annotation


# static fields
.field private static enum hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Navigation$a;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/Navigation$a;

.field private static enum qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Lcom/google/appinventor/components/runtime/Navigation$a;

.field private static enum vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Navigation$a;

.field private static enum vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/Navigation$a;

.field public static final enum wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/Navigation$a;


# instance fields
.field private final tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 71
    new-instance v0, Lcom/google/appinventor/components/runtime/Navigation$a;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "DEFAULT"

    const/4 v3, 0x0

    const-string/jumbo v4, "foot-walking"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Navigation$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Navigation$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/Navigation$a;

    .line 72
    new-instance v0, Lcom/google/appinventor/components/runtime/Navigation$a;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "DRIVING"

    const/4 v3, 0x1

    const-string/jumbo v4, "driving-car"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Navigation$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Navigation$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Navigation$a;

    .line 73
    new-instance v0, Lcom/google/appinventor/components/runtime/Navigation$a;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "CYCLING"

    const/4 v3, 0x2

    const-string/jumbo v4, "cycling-regular"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Navigation$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Navigation$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Navigation$a;

    .line 74
    new-instance v0, Lcom/google/appinventor/components/runtime/Navigation$a;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "WALKING"

    const/4 v3, 0x3

    const-string/jumbo v4, "foot-walking"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Navigation$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Navigation$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/Navigation$a;

    .line 75
    new-instance v0, Lcom/google/appinventor/components/runtime/Navigation$a;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "WHEELCHAIR"

    const/4 v3, 0x4

    const-string/jumbo v4, "wheelchair"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Navigation$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Navigation$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Lcom/google/appinventor/components/runtime/Navigation$a;

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/Navigation$a;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lcom/google/appinventor/components/runtime/Navigation$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/Navigation$a;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/google/appinventor/components/runtime/Navigation$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Navigation$a;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/google/appinventor/components/runtime/Navigation$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lcom/google/appinventor/components/runtime/Navigation$a;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    sget-object v3, Lcom/google/appinventor/components/runtime/Navigation$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/Navigation$a;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x4

    sget-object v3, Lcom/google/appinventor/components/runtime/Navigation$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Lcom/google/appinventor/components/runtime/Navigation$a;

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/Navigation$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/Navigation$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Navigation$a;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    .line 81
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Navigation$a;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    .line 1084
    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Navigation$a;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    .line 70
    move-object v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Navigation$a;
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    const-class v1, Lcom/google/appinventor/components/runtime/Navigation$a;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Navigation$a;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/Navigation$a;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/appinventor/components/runtime/Navigation$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/Navigation$a;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/Navigation$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/Navigation$a;

    return-object v0
.end method
