.class Landroidx/appcompat/app/AppCompatDelegateImpl$5;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 4

    .prologue
    .line 715
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$5;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$5;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedFromWindow()V
    .locals 0

    .prologue
    .line 717
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$5;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$5;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->dismissPopups()V

    .line 722
    return-void
.end method
