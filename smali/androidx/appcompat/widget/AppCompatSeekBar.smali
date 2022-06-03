.class public Landroidx/appcompat/widget/AppCompatSeekBar;
.super Landroid/widget/SeekBar;
.source "AppCompatSeekBar.java"


# instance fields
.field private final mAppCompatSeekBarHelper:Landroidx/appcompat/widget/AppCompatSeekBarHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSeekBar;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSeekBar;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/appcompat/R$attr;->seekBarStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSeekBar;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/AppCompatSeekBarHelper;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;-><init>(Landroid/widget/SeekBar;)V

    iput-object v5, v4, Landroidx/appcompat/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroidx/appcompat/widget/AppCompatSeekBarHelper;

    .line 50
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroidx/appcompat/widget/AppCompatSeekBarHelper;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSeekBar;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/SeekBar;->drawableStateChanged()V

    .line 62
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroidx/appcompat/widget/AppCompatSeekBarHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->drawableStateChanged()V

    .line 63
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSeekBar;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/SeekBar;->jumpDrawablesToCurrentState()V

    .line 68
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroidx/appcompat/widget/AppCompatSeekBarHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->jumpDrawablesToCurrentState()V

    .line 69
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSeekBar;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    invoke-super {v2, v3}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroidx/appcompat/widget/AppCompatSeekBarHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->drawTickMarks(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v4

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSeekBar;
    throw v0
.end method
