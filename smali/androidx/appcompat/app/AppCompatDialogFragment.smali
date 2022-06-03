.class public Landroidx/appcompat/app/AppCompatDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AppCompatDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialogFragment;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialogFragment;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    new-instance v2, Landroidx/appcompat/app/AppCompatDialog;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatDialogFragment;->getTheme()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/AppCompatDialogFragment;
    return-object v0
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDialogFragment;
    move-object v1, p1

    .local v1, "dialog":Landroid/app/Dialog;
    move v2, p2

    .local v2, "style":I
    move-object v4, v1

    instance-of v4, v4, Landroidx/appcompat/app/AppCompatDialog;

    if-eqz v4, :cond_0

    .line 49
    move-object v4, v1

    check-cast v4, Landroidx/appcompat/app/AppCompatDialog;

    move-object v3, v4

    .line 50
    .local v3, "acd":Landroidx/appcompat/app/AppCompatDialog;
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 60
    .line 64
    .end local v3    # "acd":Landroidx/appcompat/app/AppCompatDialog;
    :goto_0
    return-void

    .line 52
    .restart local v3    # "acd":Landroidx/appcompat/app/AppCompatDialog;
    :pswitch_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 58
    :pswitch_1
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    move-result v4

    goto :goto_0

    .line 62
    .end local v3    # "acd":Landroidx/appcompat/app/AppCompatDialog;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroidx/fragment/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
