.class public final Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager$GenericModelRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GenericTypeRequest"
.end annotation


# instance fields
.field private final model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final modelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final providedModel:Z

.field final synthetic this$1:Lcom/bumptech/glide/RequestManager$GenericModelRequest;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 754
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;, "Lcom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>.GenericTypeRequest;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 755
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->providedModel:Z

    .line 756
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->model:Ljava/lang/Object;

    .line 757
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->modelClass:Ljava/lang/Class;

    .line 758
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 748
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;, "Lcom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>.GenericTypeRequest;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "model":Ljava/lang/Object;, "TA;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 749
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->providedModel:Z

    .line 750
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->model:Ljava/lang/Object;

    .line 751
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/bumptech/glide/RequestManager;->access$000(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->modelClass:Ljava/lang/Class;

    .line 752
    return-void
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Lcom/bumptech/glide/GenericTranscodeRequest;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/bumptech/glide/GenericTranscodeRequest",
            "<TA;TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 768
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;, "Lcom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>.GenericTypeRequest;"
    move-object/from16 v1, p1

    .local v1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v3, v3, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v3}, Lcom/bumptech/glide/RequestManager;->access$500(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v3

    new-instance v4, Lcom/bumptech/glide/GenericTranscodeRequest;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v6, v6, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v6}, Lcom/bumptech/glide/RequestManager;->access$100(Lcom/bumptech/glide/RequestManager;)Landroid/content/Context;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v7, v7, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v7}, Lcom/bumptech/glide/RequestManager;->access$200(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/Glide;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->modelClass:Ljava/lang/Class;

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-static {v9}, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->access$600(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-static {v10}, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->access$700(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Ljava/lang/Class;

    move-result-object v10

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v12, v12, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v12}, Lcom/bumptech/glide/RequestManager;->access$300(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/RequestTracker;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v13, v13, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v13}, Lcom/bumptech/glide/RequestManager;->access$400(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/Lifecycle;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v14, v14, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-static {v14}, Lcom/bumptech/glide/RequestManager;->access$500(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v14

    invoke-direct/range {v5 .. v14}, Lcom/bumptech/glide/GenericTranscodeRequest;-><init>(Landroid/content/Context;Lcom/bumptech/glide/Glide;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/GenericTranscodeRequest;

    move-object v2, v3

    .line 771
    .local v2, "result":Lcom/bumptech/glide/GenericTranscodeRequest;, "Lcom/bumptech/glide/GenericTranscodeRequest<TA;TT;TZ;>;"
    move-object v3, v0

    iget-boolean v3, v3, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->providedModel:Z

    if-eqz v3, :cond_0

    .line 772
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->model:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/GenericTranscodeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    .line 774
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;, "Lcom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>.GenericTypeRequest;"
    return-object v0
.end method
