.class public Lcom/google/appinventor/components/runtime/HVArrangement;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

.field private Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:Z

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private final androidUIHandler:Landroid/os/Handler;

.field private bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:Z

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private clickable:Z

.field private horizontalAlignment:I

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

.field private imagePath:Ljava/lang/String;

.field private final q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:I

.field private scrollable:Z

.field private scrollbar:Z

.field private size:I

.field private verticalAlignment:I

.field public final viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;IZ)V
    .locals 12

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 50
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollable:Z

    .line 63
    move-object v4, v0

    const-string/jumbo v5, ""

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    .line 65
    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    .line 67
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->clickable:Z

    .line 68
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollbar:Z

    .line 69
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:Z

    .line 70
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:Z

    .line 73
    move-object v4, v0

    const/16 v5, 0x8

    iput v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    .line 85
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    .line 87
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:I

    .line 88
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollable:Z

    .line 90
    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    move v8, v2

    const/16 v9, 0x64

    .line 91
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x64

    .line 92
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 94
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 95
    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 96
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:I

    .line 97
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:I

    .line 98
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:I

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 99
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:I

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 101
    move v4, v3

    if-eqz v4, :cond_0

    .line 102
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 110
    .line 117
    :goto_0
    move-object v4, v0

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    .line 118
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/16 v7, 0x64

    const/16 v8, 0x64

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v5

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    move-object v4, v0

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/HVArrangement;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    .line 125
    move-object v4, v1

    move-object v5, v0

    invoke-interface {v4, v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 126
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/HVArrangement;->BackgroundColor(I)V

    .line 127
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/HVArrangement;->setAnimation()V

    .line 128
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/HVArrangement;->UseRoundCard(Z)V

    .line 129
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/HVArrangement;->isCard(Z)V

    .line 130
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/HVArrangement;->Clickable(Z)V

    .line 131
    return-void

    .line 104
    :pswitch_0
    const-string/jumbo v4, "HVArrangement"

    const-string/jumbo v5, "Setting up frameContainer = ScrollView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 105
    move-object v4, v0

    new-instance v5, Landroid/widget/ScrollView;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    .line 106
    goto :goto_0

    .line 108
    :pswitch_1
    const-string/jumbo v4, "HVArrangement"

    const-string/jumbo v5, "Setting up frameContainer = HorizontalScrollView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 109
    move-object v4, v0

    new-instance v5, Landroid/widget/HorizontalScrollView;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 113
    :cond_0
    const-string/jumbo v4, "HVArrangement"

    const-string/jumbo v5, "Setting up frameContainer = FrameLayout()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 114
    move-object v4, v0

    new-instance v5, Landroid/widget/FrameLayout;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/animation/AlphaAnimation;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/animation/AlphaAnimation;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Z
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->clickable:Z

    move v0, v1

    return v0
.end method

.method private updateAppearance()V
    .locals 6

    .prologue
    .line 563
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 564
    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    if-nez v2, :cond_0

    .line 567
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 573
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:Z

    if-eqz v2, :cond_3

    .line 574
    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    const v3, 0xffffff

    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    :goto_1
    move v1, v2

    .line 575
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    move v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/HVArrangement;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:Z

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setShape(Landroid/view/View;IIZ)V

    .line 576
    .line 581
    :goto_2
    return-void

    .line 570
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 571
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    .line 574
    :cond_1
    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    goto :goto_1

    .line 579
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 581
    :cond_3
    goto :goto_2
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 147
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public AlignHorizontal()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the arrangement are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement\'s width is automatic."
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:I

    move v0, v1

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 297
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .line 302
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "HorizontalAlignment"

    const/16 v5, 0x579

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    .line 300
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 299
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 302
    goto :goto_0
.end method

.method public AlignVertical()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the arrangement are aligned  vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom.  Alignment has no effect if the arrangement\'s height is automatic."
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:I

    move v0, v1

    return v0
.end method

.method public AlignVertical(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 332
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .line 337
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "VerticalAlignment"

    const/16 v5, 0x57a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    .line 335
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 334
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 337
    goto :goto_0
.end method

.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the component\'s background color"
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the component\'s background color. The background color will not be visible if an Image is being displayed."
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    .line 365
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/HVArrangement;->updateAppearance()V

    .line 366
    return-void
.end method

.method public Click()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Click listener event."
    .end annotation

    .prologue
    .line 442
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Click"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 443
    return-void
.end method

.method public Clickable(Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the component clickable or not clickable."
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->clickable:Z

    .line 454
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 455
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->clickable:Z

    if-eqz v2, :cond_0

    .line 456
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 457
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/FrameLayout;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/HVArrangement;->getSelectedItemDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 458
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    new-instance v3, Lcom/google/appinventor/components/runtime/HVArrangement$4;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/HVArrangement$4;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    new-instance v3, Lcom/google/appinventor/components/runtime/HVArrangement$5;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/HVArrangement$5;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 478
    :goto_0
    return-void

    .line 473
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 474
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 476
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 478
    goto :goto_0
.end method

.method public Clickable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 482
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->clickable:Z

    move v0, v1

    return v0
.end method

.method public FullClickable(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
        userVisible = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 587
    return-void
.end method

.method public Height(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 238
    move v2, v1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 239
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v2, v2, Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    .line 240
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 242
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v2, v2, Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_1

    .line 243
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 246
    :cond_1
    return-void
.end method

.method public HeightPercent(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->HeightPercent(I)V

    .line 252
    move v2, v1

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    .line 253
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v2, v2, Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    .line 254
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 256
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v2, v2, Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_1

    .line 257
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 260
    :cond_1
    return-void
.end method

.method public Image()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 519
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the component\'s image.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .prologue
    .line 536
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 537
    .line 556
    :goto_0
    return-void

    .line 540
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    :goto_1
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    .line 543
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 546
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 548
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .line 555
    :cond_1
    :goto_2
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/HVArrangement;->updateAppearance()V

    .line 556
    goto :goto_0

    .line 540
    :cond_2
    move-object v3, v1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public LongClick()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Long click listener event."
    .end annotation

    .prologue
    .line 447
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "LongClick"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 448
    return-void
.end method

.method public Scrollbar(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether to display a scrollbar"
    .end annotation

    .prologue
    .line 498
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 499
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 503
    :cond_0
    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollbar:Z

    .line 504
    return-void

    .line 500
    :cond_1
    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:I

    if-nez v2, :cond_0

    .line 501
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method public Scrollbar()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 508
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollbar:Z

    move v0, v1

    return v0
.end method

.method public UseRoundCard(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled the card layout will have then round corners."
    .end annotation

    .prologue
    .line 380
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:Z

    .line 381
    return-void
.end method

.method public UseRoundCard()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 385
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:Z

    move v0, v1

    return v0
.end method

.method public Width(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 210
    move v2, v1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 211
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v2, v2, Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    .line 212
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 214
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v2, v2, Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_1

    .line 215
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 218
    :cond_1
    return-void
.end method

.method public WidthPercent(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->WidthPercent(I)V

    .line 224
    move v2, v1

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    .line 225
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v2, v2, Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    .line 226
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 228
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v2, v2, Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_1

    .line 229
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 232
    :cond_1
    return-void
.end method

.method public getSelectedItemDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 486
    move-object v0, p0

    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const v6, 0x101030e

    aput v6, v4, v5

    move-object v1, v3

    .line 487
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 489
    move-object v1, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 491
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 492
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    move-object v0, v1

    return-object v0
.end method

.method public isCard(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled the arrangement will be convert to a card view. You can detect clicks on it with the \"Click\" event."
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:Z

    .line 393
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement;->clickable:Z

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 394
    move v2, v1

    if-eqz v2, :cond_1

    .line 395
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 396
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 397
    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    const v3, 0xffffff

    if-ne v2, v3, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v1, v2

    .line 398
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    move v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/HVArrangement;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:Z

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setShape(Landroid/view/View;IIZ)V

    .line 399
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 400
    move-object v1, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 401
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 405
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    new-instance v3, Lcom/google/appinventor/components/runtime/HVArrangement$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/HVArrangement$3;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 425
    .line 433
    :goto_1
    return-void

    .line 397
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    goto :goto_0

    .line 426
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 427
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 428
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 429
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 430
    move-object v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 431
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    goto :goto_1
.end method

.method public isCard()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 437
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:Z

    move v0, v1

    return v0
.end method

.method public setAnimation()V
    .locals 7

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    .line 370
    move-object v1, v0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    .line 371
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 372
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 373
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 374
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/HVArrangement;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 375
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 11

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v4

    move v10, v4

    move v4, v10

    move v5, v10

    .line 183
    move v3, v5

    if-nez v4, :cond_0

    .line 185
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/HVArrangement$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/HVArrangement$2;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 193
    :cond_0
    move v4, v2

    const/16 v5, -0x3e8

    if-gt v4, v5, :cond_1

    .line 194
    move v4, v3

    move v5, v2

    const/16 v6, -0x3e8

    add-int/lit16 v5, v5, 0x3e8

    neg-int v5, v5

    mul-int/2addr v4, v5

    const/16 v5, 0x64

    div-int/lit8 v4, v4, 0x64

    move v2, v4

    .line 197
    :cond_1
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 199
    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/HVArrangement;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:I

    if-nez v4, :cond_2

    .line 200
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForHorizontalLayout(Landroid/view/View;I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    .line 204
    goto :goto_0
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/HVArrangement;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    .line 152
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 14

    .prologue
    .line 155
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v6

    move v13, v6

    move v6, v13

    move v7, v13

    .line 156
    move v5, v7

    if-nez v6, :cond_0

    move v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 158
    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    new-instance v7, Lcom/google/appinventor/components/runtime/HVArrangement$1;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/HVArrangement$1;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    .line 166
    :cond_0
    move v6, v3

    const/16 v7, -0x3e8

    if-gt v6, v7, :cond_1

    .line 167
    const-string/jumbo v6, "HVArrangement"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string/jumbo v9, "HVArrangement.setChildWidth(): width = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " parent Width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " child = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 168
    move v6, v5

    move v7, v3

    const/16 v8, -0x3e8

    add-int/lit16 v7, v7, 0x3e8

    neg-int v7, v7

    mul-int/2addr v6, v7

    const/16 v7, 0x64

    div-int/lit8 v6, v6, 0x64

    move v3, v6

    .line 171
    :cond_1
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 173
    move-object v6, v1

    iget v6, v6, Lcom/google/appinventor/components/runtime/HVArrangement;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:I

    if-nez v6, :cond_2

    .line 174
    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v6

    move v7, v3

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForHorizontalLayout(Landroid/view/View;I)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v6

    move v7, v3

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    .line 178
    goto :goto_0
.end method
