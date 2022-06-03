.class Landroidx/core/provider/FontsContractCompat$4$7;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontsContractCompat$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/provider/FontsContractCompat$4;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Landroidx/core/provider/FontsContractCompat$4;I)V
    .locals 5

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$4$7;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/provider/FontsContractCompat$4;
    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/provider/FontsContractCompat$4$7;->this$0:Landroidx/core/provider/FontsContractCompat$4;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/core/provider/FontsContractCompat$4$7;->val$resultCode:I

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$4$7;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/provider/FontsContractCompat$4$7;->this$0:Landroidx/core/provider/FontsContractCompat$4;

    iget-object v1, v1, Landroidx/core/provider/FontsContractCompat$4;->val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    move-object v2, v0

    iget v2, v2, Landroidx/core/provider/FontsContractCompat$4$7;->val$resultCode:I

    invoke-virtual {v1, v2}, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    .line 615
    return-void
.end method
