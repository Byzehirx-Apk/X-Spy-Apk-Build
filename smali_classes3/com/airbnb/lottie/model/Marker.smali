.class public Lcom/airbnb/lottie/model/Marker;
.super Ljava/lang/Object;
.source "Marker.java"


# static fields
.field private static CARRIAGE_RETURN:Ljava/lang/String;


# instance fields
.field public final durationFrames:F

.field private final name:Ljava/lang/String;

.field public final startFrame:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string/jumbo v0, "\r"

    sput-object v0, Lcom/airbnb/lottie/model/Marker;->CARRIAGE_RETURN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 6

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/Marker;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "startFrame":F
    move v3, p3

    .local v3, "durationFrames":F
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 11
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    .line 12
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    .line 13
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    .line 14
    return-void
.end method


# virtual methods
.method public matchesName(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/Marker;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    const/4 v2, 0x1

    move v0, v2

    .line 26
    .end local v0    # "this":Lcom/airbnb/lottie/model/Marker;
    :goto_0
    return v0

    .line 23
    .restart local v0    # "this":Lcom/airbnb/lottie/model/Marker;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    sget-object v3, Lcom/airbnb/lottie/model/Marker;->CARRIAGE_RETURN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
