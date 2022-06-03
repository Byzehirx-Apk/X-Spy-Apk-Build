.class Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnUnhandledKeyEventListenerWrapper"
.end annotation


# instance fields
.field private mCompatListener:Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;


# direct methods
.method constructor <init>(Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 4

    .prologue
    .line 3486
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;
    move-object v1, p1

    .local v1, "listener":Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 3487
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;->mCompatListener:Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    .line 3488
    return-void
.end method


# virtual methods
.method public onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 3491
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;->mCompatListener:Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerWrapper;
    return v0
.end method
