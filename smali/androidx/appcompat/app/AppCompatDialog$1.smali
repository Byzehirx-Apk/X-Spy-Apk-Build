.class Landroidx/appcompat/app/AppCompatDialog$1;
.super Ljava/lang/Object;
.source "AppCompatDialog.java"

# interfaces
.implements Landroidx/core/view/KeyEventDispatcher$Component;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDialog;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDialog;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AppCompatDialog;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDialog$1;->this$0:Landroidx/appcompat/app/AppCompatDialog;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialog$1;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDialog$1;->this$0:Landroidx/appcompat/app/AppCompatDialog;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatDialog;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDialog$1;
    return v0
.end method
