.class Lcom/bumptech/glide/GenericRequestBuilder$1;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/GenericRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/GenericRequestBuilder;

.field final synthetic val$target:Lcom/bumptech/glide/request/RequestFutureTarget;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/request/RequestFutureTarget;)V
    .locals 5

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder$1;, "Lcom/bumptech/glide/GenericRequestBuilder.1;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/GenericRequestBuilder$1;->this$0:Lcom/bumptech/glide/GenericRequestBuilder;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/GenericRequestBuilder$1;->val$target:Lcom/bumptech/glide/request/RequestFutureTarget;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 728
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GenericRequestBuilder$1;, "Lcom/bumptech/glide/GenericRequestBuilder.1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/GenericRequestBuilder$1;->val$target:Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/GenericRequestBuilder$1;->this$0:Lcom/bumptech/glide/GenericRequestBuilder;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/GenericRequestBuilder$1;->val$target:Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v1

    .line 731
    :cond_0
    return-void
.end method
