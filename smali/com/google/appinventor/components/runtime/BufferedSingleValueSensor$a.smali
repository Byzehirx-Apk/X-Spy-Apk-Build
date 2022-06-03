.class final Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:I

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;

.field hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Float;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;I)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v3, v0

    move v4, v2

    new-array v4, v4, [Ljava/lang/Float;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Float;

    .line 48
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:I

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;IB)V
    .locals 7

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;-><init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;I)V

    return-void
.end method
