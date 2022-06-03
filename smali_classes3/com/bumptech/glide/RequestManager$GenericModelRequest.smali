.class public final Lcom/bumptech/glide/RequestManager$GenericModelRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GenericModelRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bumptech/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager$GenericModelRequest;, "Lcom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    move-object v3, p3

    .local v3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lcom/bumptech/glide/RequestManager;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 714
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 715
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->dataClass:Ljava/lang/Class;

    .line 716
    return-void
.end method

.method static synthetic access$600(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 2

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/RequestManager$GenericModelRequest;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->modelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/RequestManager$GenericModelRequest;
    return-object v0
.end method

.method static synthetic access$700(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/RequestManager$GenericModelRequest;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->dataClass:Ljava/lang/Class;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/RequestManager$GenericModelRequest;
    return-object v0
.end method


# virtual methods
.method public from(Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;)",
            "Lcom/bumptech/glide/RequestManager$GenericModelRequest",
            "<TA;TT;>.GenericTypeRequest;"
        }
    .end annotation

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager$GenericModelRequest;, "Lcom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>;"
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    new-instance v2, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;-><init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Class;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager$GenericModelRequest;, "Lcom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>;"
    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/RequestManager$GenericModelRequest",
            "<TA;TT;>.GenericTypeRequest;"
        }
    .end annotation

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager$GenericModelRequest;, "Lcom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;, "TA;"
    new-instance v2, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;-><init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager$GenericModelRequest;, "Lcom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>;"
    return-object v0
.end method
