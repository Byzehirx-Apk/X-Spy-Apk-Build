.class Lcom/bumptech/glide/ListPreloader$2;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/ListPreloader;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/ListPreloader;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/ListPreloader;)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader$2;, "Lcom/bumptech/glide/ListPreloader.2;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/ListPreloader$2;->this$0:Lcom/bumptech/glide/ListPreloader;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreloadSize(Ljava/lang/Object;II)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/ListPreloader$2;, "Lcom/bumptech/glide/ListPreloader.2;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "adapterPosition":I
    move v3, p3

    .local v3, "perItemPosition":I
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/ListPreloader$2;->this$0:Lcom/bumptech/glide/ListPreloader;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/ListPreloader;->getDimensions(Ljava/lang/Object;)[I

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/ListPreloader$2;, "Lcom/bumptech/glide/ListPreloader.2;"
    return-object v0
.end method
