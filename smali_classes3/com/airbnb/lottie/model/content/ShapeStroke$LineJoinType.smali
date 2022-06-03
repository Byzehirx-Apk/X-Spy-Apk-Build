.class public final enum Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
.super Ljava/lang/Enum;
.source "ShapeStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/ShapeStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineJoinType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field public static final enum BEVEL:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field public static final enum MITER:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field public static final enum ROUND:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "MITER"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->MITER:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 37
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "ROUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->ROUND:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 38
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "BEVEL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->BEVEL:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->MITER:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->ROUND:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->BEVEL:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->$VALUES:[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

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
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->$VALUES:[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method


# virtual methods
.method public toPaintJoin()Landroid/graphics/Paint$Join;
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    sget-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$1;->$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType:[I

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 49
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    :goto_0
    return-object v0

    .line 43
    .restart local v0    # "this":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    :pswitch_0
    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    move-object v0, v1

    goto :goto_0

    .line 45
    :pswitch_1
    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    move-object v0, v1

    goto :goto_0

    .line 47
    :pswitch_2
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    move-object v0, v1

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
