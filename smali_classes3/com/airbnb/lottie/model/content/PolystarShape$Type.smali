.class public final enum Lcom/airbnb/lottie/model/content/PolystarShape$Type;
.super Ljava/lang/Enum;
.source "PolystarShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/PolystarShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/lottie/model/content/PolystarShape$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/PolystarShape$Type;

.field public static final enum POLYGON:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

.field public static final enum STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 14
    new-instance v0, Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "STAR"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 15
    new-instance v0, Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "POLYGON"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->POLYGON:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->POLYGON:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    aput-object v3, v1, v2

    sput-object v0, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->$VALUES:[Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "value":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->value:I

    .line 21
    return-void
.end method

.method public static forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    .locals 7

    .prologue
    .line 24
    move v0, p0

    .local v0, "value":I
    invoke-static {}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->values()[Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 25
    .local v4, "type":Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    move-object v5, v4

    iget v5, v5, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->value:I

    move v6, v0

    if-ne v5, v6, :cond_0

    .line 26
    move-object v5, v4

    move-object v0, v5

    .line 29
    .end local v0    # "value":I
    :goto_1
    return-object v0

    .line 24
    .restart local v0    # "value":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    .end local v4    # "type":Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    .locals 3

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->$VALUES:[Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/PolystarShape$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    return-object v0
.end method
