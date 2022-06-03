.class Lcom/airbnb/lottie/LottieTask$LottieFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "LottieTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LottieFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/airbnb/lottie/LottieResult",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieTask;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieTask;Ljava/util/concurrent/Callable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/airbnb/lottie/LottieResult",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask$LottieFutureTask;, "Lcom/airbnb/lottie/LottieTask<TT;>.LottieFutureTask;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/airbnb/lottie/LottieResult<TT;>;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->this$0:Lcom/airbnb/lottie/LottieTask;

    .line 164
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 165
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/LottieTask$LottieFutureTask;, "Lcom/airbnb/lottie/LottieTask<TT;>.LottieFutureTask;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    .line 179
    :goto_0
    return-void

    .line 175
    :cond_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->this$0:Lcom/airbnb/lottie/LottieTask;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieResult;

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieTask;->access$300(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieResult;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    .line 179
    :goto_1
    goto :goto_0

    .line 176
    :catch_0
    move-exception v2

    :goto_2
    move-object v1, v2

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->this$0:Lcom/airbnb/lottie/LottieTask;

    new-instance v3, Lcom/airbnb/lottie/LottieResult;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/airbnb/lottie/LottieTask;->access$300(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieResult;)V

    goto :goto_1

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_2
.end method
