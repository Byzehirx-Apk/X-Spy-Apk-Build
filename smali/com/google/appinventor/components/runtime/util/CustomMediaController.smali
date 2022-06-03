.class public Lcom/google/appinventor/components/runtime/util/CustomMediaController;
.super Landroid/widget/MediaController;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:I

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 35
    move-object v2, v0

    const/16 v3, 0xbb8

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:I

    .line 39
    return-void
.end method


# virtual methods
.method public addTo(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 8

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 77
    move-object v3, v5

    if-eqz v4, :cond_0

    move-object v4, v3

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 78
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const/4 v4, 0x1

    move v0, v4

    .line 84
    :goto_0
    return v0

    .line 82
    :cond_0
    const-string/jumbo v4, "CustomMediaController.addTo"

    const-string/jumbo v5, "MediaController not available in fullscreen."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 84
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/MediaController;->hide()V

    .line 106
    move-object v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/view/View;

    if-ne v3, v4, :cond_0

    .line 117
    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    iget v4, v4, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->show(I)V

    .line 119
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/view/View;

    .line 95
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->setVisibility(I)V

    .line 60
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/MediaController;->show()V

    .line 61
    return-void
.end method

.method public show(I)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->setVisibility(I)V

    .line 50
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/MediaController;->show(I)V

    .line 51
    return-void
.end method
