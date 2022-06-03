.class Lcom/bumptech/glide/RequestManager$OptionsApplier;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionsApplier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager;)V
    .locals 4

    .prologue
    .line 779
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager$OptionsApplier;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/RequestManager$OptionsApplier;->this$0:Lcom/bumptech/glide/RequestManager;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TA;***>;>(TX;)TX;"
        }
    .end annotation

    .prologue
    .line 782
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager$OptionsApplier;
    move-object v1, p1

    .local v1, "builder":Lcom/bumptech/glide/GenericRequestBuilder;, "TX;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/RequestManager$OptionsApplier;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v2}, Lcom/bumptech/glide/RequestManager;->access$800(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 783
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/RequestManager$OptionsApplier;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v2}, Lcom/bumptech/glide/RequestManager;->access$800(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/bumptech/glide/RequestManager$DefaultOptions;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 785
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager$OptionsApplier;
    return-object v0
.end method
