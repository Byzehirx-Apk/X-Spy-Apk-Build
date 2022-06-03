.class Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ForwardingListener;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ForwardingListener;)V
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;->this$0:Landroidx/appcompat/widget/ForwardingListener;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 330
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;->this$0:Landroidx/appcompat/widget/ForwardingListener;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ForwardingListener;->onLongPress()V

    .line 335
    return-void
.end method
