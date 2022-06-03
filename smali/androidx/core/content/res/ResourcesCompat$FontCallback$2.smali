.class Landroidx/core/content/res/ResourcesCompat$FontCallback$2;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/content/res/ResourcesCompat$FontCallback;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V
    .locals 5

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/ResourcesCompat$FontCallback$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/content/res/ResourcesCompat$FontCallback$2;->this$0:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/core/content/res/ResourcesCompat$FontCallback$2;->val$reason:I

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/ResourcesCompat$FontCallback$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/res/ResourcesCompat$FontCallback$2;->this$0:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    move-object v2, v0

    iget v2, v2, Landroidx/core/content/res/ResourcesCompat$FontCallback$2;->val$reason:I

    invoke-virtual {v1, v2}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    .line 270
    return-void
.end method
