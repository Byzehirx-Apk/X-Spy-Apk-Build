.class Lcom/airbnb/lottie/LottieDrawable$15;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic val$callback:Lcom/airbnb/lottie/value/LottieValueCallback;

.field final synthetic val$keyPath:Lcom/airbnb/lottie/model/KeyPath;

.field final synthetic val$property:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 7

    .prologue
    .line 879
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$15;
    move-object v1, p1

    .local v1, "this$0":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/airbnb/lottie/LottieDrawable$15;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/airbnb/lottie/LottieDrawable$15;->val$keyPath:Lcom/airbnb/lottie/model/KeyPath;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/airbnb/lottie/LottieDrawable$15;->val$property:Ljava/lang/Object;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/airbnb/lottie/LottieDrawable$15;->val$callback:Lcom/airbnb/lottie/value/LottieValueCallback;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieDrawable$15;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieDrawable$15;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/LottieDrawable$15;->val$keyPath:Lcom/airbnb/lottie/model/KeyPath;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieDrawable$15;->val$property:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/LottieDrawable$15;->val$callback:Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 883
    return-void
.end method
