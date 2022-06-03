.class Landroidx/appcompat/widget/TooltipCompatHandler$1;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/TooltipCompatHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/TooltipCompatHandler;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/TooltipCompatHandler;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipCompatHandler$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/TooltipCompatHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/TooltipCompatHandler$1;->this$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TooltipCompatHandler$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/TooltipCompatHandler$1;->this$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TooltipCompatHandler;->show(Z)V

    .line 58
    return-void
.end method
