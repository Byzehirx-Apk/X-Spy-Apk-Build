.class public final Lcom/bumptech/glide/RequestManager$ImageModelRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImageModelRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final loader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bumptech/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager$ImageModelRequest;, "Lcom/bumptech/glide/RequestManager$ImageModelRequest<TT;>;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "loader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TT;Ljava/io/InputStream;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 674
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->loader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 675
    return-void
.end method


# virtual methods
.method public from(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 684
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager$ImageModelRequest;, "Lcom/bumptech/glide/RequestManager$ImageModelRequest<TT;>;"
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v2}, Lcom/bumptech/glide/RequestManager;->access$500(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->loader:Lcom/bumptech/glide/load/model/ModelLoader;

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v8}, Lcom/bumptech/glide/RequestManager;->access$100(Lcom/bumptech/glide/RequestManager;)Landroid/content/Context;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v9}, Lcom/bumptech/glide/RequestManager;->access$200(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/Glide;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v10}, Lcom/bumptech/glide/RequestManager;->access$300(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/RequestTracker;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v11}, Lcom/bumptech/glide/RequestManager;->access$400(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/Lifecycle;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v12}, Lcom/bumptech/glide/RequestManager;->access$500(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v12

    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager$ImageModelRequest;, "Lcom/bumptech/glide/RequestManager$ImageModelRequest<TT;>;"
    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 697
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager$ImageModelRequest;, "Lcom/bumptech/glide/RequestManager$ImageModelRequest<TT;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/bumptech/glide/RequestManager;->access$000(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager$ImageModelRequest;->from(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager$ImageModelRequest;, "Lcom/bumptech/glide/RequestManager$ImageModelRequest<TT;>;"
    return-object v0
.end method
