.class synthetic Lcom/airbnb/lottie/model/content/ShapeStroke$1;
.super Ljava/lang/Object;
.source "ShapeStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/ShapeStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType:[I

.field static final synthetic $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$1;->$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType:[I

    :try_start_0
    sget-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$1;->$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType:[I

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->BEVEL:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$1;->$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType:[I

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->MITER:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$1;->$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType:[I

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->ROUND:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 23
    :goto_2
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$1;->$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType:[I

    :try_start_3
    sget-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$1;->$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType:[I

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->BUTT:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$1;->$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType:[I

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->ROUND:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$1;->$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType:[I

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->UNKNOWN:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    return-void

    .line 41
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2

    .line 23
    :catch_3
    move-exception v1

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v0, v1

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v0, v1

    goto :goto_5
.end method
