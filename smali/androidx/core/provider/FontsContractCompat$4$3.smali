.class Landroidx/core/provider/FontsContractCompat$4$3;
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


# direct methods
.method constructor <init>(Landroidx/core/provider/FontsContractCompat$4;)V
    .locals 4

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$4$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/provider/FontsContractCompat$4;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/provider/FontsContractCompat$4$3;->this$0:Landroidx/core/provider/FontsContractCompat$4;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$4$3;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/provider/FontsContractCompat$4$3;->this$0:Landroidx/core/provider/FontsContractCompat$4;

    iget-object v1, v1, Landroidx/core/provider/FontsContractCompat$4;->val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    .line 568
    return-void
.end method
