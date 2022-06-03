.class Lcom/airbnb/lottie/model/layer/TextLayer$2;
.super Landroid/graphics/Paint;
.source "TextLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/layer/TextLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/model/layer/TextLayer;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/layer/TextLayer$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/airbnb/lottie/model/layer/TextLayer;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/model/layer/TextLayer$2;->this$0:Lcom/airbnb/lottie/model/layer/TextLayer;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 44
    move-object v3, v0

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer$2;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    return-void
.end method
