.class Lcom/airbnb/lottie/LottieTask$1;
.super Ljava/lang/Object;
.source "LottieTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieTask;->notifyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieTask;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieTask;)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask$1;, "Lcom/airbnb/lottie/LottieTask$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/airbnb/lottie/LottieTask;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/LottieTask$1;->this$0:Lcom/airbnb/lottie/LottieTask;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask$1;, "Lcom/airbnb/lottie/LottieTask$1;"
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask$1;->this$0:Lcom/airbnb/lottie/LottieTask;

    invoke-static {v2}, Lcom/airbnb/lottie/LottieTask;->access$000(Lcom/airbnb/lottie/LottieTask;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    if-nez v2, :cond_0

    .line 126
    .line 135
    :goto_0
    return-void

    .line 129
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask$1;->this$0:Lcom/airbnb/lottie/LottieTask;

    invoke-static {v2}, Lcom/airbnb/lottie/LottieTask;->access$000(Lcom/airbnb/lottie/LottieTask;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v1, v2

    .line 130
    .local v1, "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TT;>;"
    move-object v2, v1

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 131
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask$1;->this$0:Lcom/airbnb/lottie/LottieTask;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieTask;->access$100(Lcom/airbnb/lottie/LottieTask;Ljava/lang/Object;)V

    .line 135
    :goto_1
    goto :goto_0

    .line 133
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask$1;->this$0:Lcom/airbnb/lottie/LottieTask;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieTask;->access$200(Lcom/airbnb/lottie/LottieTask;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
