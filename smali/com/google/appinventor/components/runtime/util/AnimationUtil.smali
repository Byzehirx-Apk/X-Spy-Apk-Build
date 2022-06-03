.class public final Lcom/google/appinventor/components/runtime/util/AnimationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static ApplyAnimation(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "ScrollRightSlow"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    move-object v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x1f40

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V

    .line 73
    :goto_0
    return-void

    .line 60
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "ScrollRight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    move-object v2, v0

    const/4 v3, 0x0

    const/16 v4, 0xfa0

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V

    goto :goto_0

    .line 62
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "ScrollRightFast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    move-object v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V

    goto :goto_0

    .line 64
    :cond_2
    move-object v2, v1

    const-string/jumbo v3, "ScrollLeftSlow"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x1f40

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V

    goto :goto_0

    .line 66
    :cond_3
    move-object v2, v1

    const-string/jumbo v3, "ScrollLeft"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0xfa0

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V

    goto :goto_0

    .line 68
    :cond_4
    move-object v2, v1

    const-string/jumbo v3, "ScrollLeftFast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 69
    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V

    goto :goto_0

    .line 70
    :cond_5
    move-object v2, v1

    const-string/jumbo v3, "Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 71
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 73
    :cond_6
    goto :goto_0
.end method

.method public static ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    .line 124
    .line 153
    :goto_0
    return-void

    .line 126
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x4

    if-gt v4, v5, :cond_1

    .line 127
    const-string/jumbo v4, "AnimationUtil"

    const-string/jumbo v5, "Screen animations are not available on android versions less than 2.0."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 128
    goto :goto_0

    .line 130
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    .line 131
    const/4 v4, 0x0

    move v3, v4

    .line 132
    move-object v4, v1

    const-string/jumbo v5, "fade"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 133
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "fadeout"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 134
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "hold"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 152
    :cond_2
    :goto_1
    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->overridePendingTransitions(Landroid/app/Activity;II)V

    .line 153
    goto :goto_0

    .line 135
    :cond_3
    move-object v4, v1

    const-string/jumbo v5, "zoom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 136
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "zoom_exit_reverse"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 137
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "zoom_enter_reverse"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    goto :goto_1

    .line 138
    :cond_4
    move-object v4, v1

    const-string/jumbo v5, "slidehorizontal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 139
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_exit_reverse"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 140
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_enter_reverse"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    goto :goto_1

    .line 141
    :cond_5
    move-object v4, v1

    const-string/jumbo v5, "slidevertical"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 142
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_v_exit_reverse"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 143
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_v_enter_reverse"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    goto/16 :goto_1

    .line 144
    :cond_6
    move-object v4, v1

    const-string/jumbo v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 150
    goto/16 :goto_0
.end method

.method public static ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    .line 84
    .line 114
    :goto_0
    return-void

    .line 86
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x4

    if-gt v4, v5, :cond_1

    .line 87
    const-string/jumbo v4, "AnimationUtil"

    const-string/jumbo v5, "Screen animations are not available on android versions less than 2.0."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 88
    goto :goto_0

    .line 90
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    .line 91
    const/4 v4, 0x0

    move v3, v4

    .line 93
    move-object v4, v1

    const-string/jumbo v5, "fade"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 94
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "fadein"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 95
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "hold"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 113
    :cond_2
    :goto_1
    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->overridePendingTransitions(Landroid/app/Activity;II)V

    .line 114
    goto :goto_0

    .line 96
    :cond_3
    move-object v4, v1

    const-string/jumbo v5, "zoom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "zoom_exit"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 98
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "zoom_enter"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    goto :goto_1

    .line 99
    :cond_4
    move-object v4, v1

    const-string/jumbo v5, "slidehorizontal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 100
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_exit"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 101
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_enter"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    goto :goto_1

    .line 102
    :cond_5
    move-object v4, v1

    const-string/jumbo v5, "slidevertical"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 103
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_v_exit"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 104
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_v_enter"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    goto/16 :goto_1

    .line 105
    :cond_6
    move-object v4, v1

    const-string/jumbo v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 111
    goto/16 :goto_0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V
    .locals 16

    .prologue
    .line 34
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move v5, v2

    if-eqz v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    move v2, v5

    .line 35
    new-instance v5, Landroid/view/animation/AnimationSet;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    .line 36
    move-object v4, v6

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 37
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 39
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x2

    move v8, v2

    const v9, 0x3f333333    # 0.7f

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    move v10, v2

    const v11, -0x40cccccd    # -0.7f

    mul-float/2addr v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    .line 42
    move-object v2, v6

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 43
    move-object v5, v2

    move v6, v3

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 44
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 45
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 46
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    return-void

    .line 34
    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_0
.end method
