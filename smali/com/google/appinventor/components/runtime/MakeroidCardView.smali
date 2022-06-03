.class public Lcom/google/appinventor/components/runtime/MakeroidCardView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "write in ode"
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "cardview.jar, cardview.aar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;
    }
.end annotation


# instance fields
.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

.field private OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:I

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

.field private UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

.field private YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:I

.field private ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

.field private final activity:Landroid/app/Activity;

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private final androidUIHandler:Landroid/os/Handler;

.field private backgroundColor:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private horizontalAlignment:I

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

.field private iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Z

.field private final mainLayout:Landroid/view/ViewGroup;

.field private muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

.field private oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

.field private verticalAlignment:I

.field private final viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 35
    move-object v5, v0

    new-instance v6, Landroid/os/Handler;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->androidUIHandler:Landroid/os/Handler;

    .line 44
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->backgroundColor:I

    .line 45
    move-object v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    iput v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    .line 46
    move-object v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    iput v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    .line 47
    move-object v5, v0

    const/16 v6, 0x8

    iput v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:I

    .line 48
    move-object v5, v0

    const/16 v6, 0x8

    iput v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:I

    .line 49
    move-object v5, v0

    const/16 v6, 0x8

    iput v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

    .line 50
    move-object v5, v0

    const/16 v6, 0x8

    iput v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    .line 51
    move-object v5, v0

    const v6, -0x333334

    iput v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    .line 52
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    .line 53
    move-object v5, v0

    const v6, -0x333334

    iput v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    .line 54
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Z

    .line 56
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->verticalAlignment:I

    .line 57
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->horizontalAlignment:I

    .line 64
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 65
    move-object v5, v0

    move-object v6, v1

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    .line 66
    move-object v5, v0

    move-object v6, v1

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->activity:Landroid/app/Activity;

    .line 68
    move-object v5, v0

    new-instance v6, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    .line 69
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setClickable(Z)V

    .line 70
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setLongClickable(Z)V

    .line 71
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setFocusable(Z)V

    .line 72
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v5

    .line 77
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    move v3, v5

    .line 78
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    move v4, v5

    .line 79
    move-object v5, v2

    move v6, v3

    move v7, v4

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 80
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setUseCompatPadding(Z)V

    .line 82
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setPreventCornerOverlap(Z)V

    .line 84
    move-object v5, v0

    new-instance v6, Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    const/4 v9, 0x1

    const/16 v10, 0x64

    .line 85
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x64

    .line 86
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 88
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 90
    move-object v5, v0

    new-instance v6, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidCardView;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 91
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->horizontalAlignment:I

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 92
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->verticalAlignment:I

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 94
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v6

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    move-object v5, v0

    new-instance v6, Landroid/widget/FrameLayout;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->mainLayout:Landroid/view/ViewGroup;

    .line 97
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->mainLayout:Landroid/view/ViewGroup;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x64

    const/16 v9, 0x64

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->mainLayout:Landroid/view/ViewGroup;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    move-object v5, v1

    move-object v6, v0

    invoke-interface {v5, v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 102
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->backgroundColor:I

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->BackgroundColor(I)V

    .line 103
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UpdateCard()V

    .line 104
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->CornerRadius(F)V

    .line 105
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->Elevation(F)V

    .line 106
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Z

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->FullClickable(Z)V

    .line 108
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->StrokeWidth(F)V

    .line 109
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->StrokeColor(I)V

    .line 110
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->TouchColor(I)V

    .line 112
    const-string/jumbo v5, "Card View"

    const-string/jumbo v6, "Card View Created"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 113
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 133
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->activity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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
    .line 411
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->horizontalAlignment:I

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
    .line 396
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 397
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->horizontalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .line 402
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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

    .line 400
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 399
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 402
    goto :goto_0
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
    .line 421
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 422
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->verticalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .line 427
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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

    .line 425
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 424
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 427
    goto :goto_0
.end method

.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 351
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the card view background color."
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->backgroundColor:I

    .line 239
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setCardBackgroundColor(I)V

    .line 240
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->invalidate()V

    .line 241
    return-void
.end method

.method public Click()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple \"Click\"."
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Click"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 217
    return-void
.end method

.method public ContentPaddingBottom()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    move v0, v1

    return v0
.end method

.method public ContentPaddingBottom(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the bottom padding between the card view edges and the children of CardView."
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    .line 293
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UpdateCard()V

    .line 294
    return-void
.end method

.method public ContentPaddingLeft()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 366
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:I

    move v0, v1

    return v0
.end method

.method public ContentPaddingLeft(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the left padding between the card view edges and the children of card view."
    .end annotation

    .prologue
    .line 265
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:I

    .line 266
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UpdateCard()V

    .line 267
    return-void
.end method

.method public ContentPaddingRight()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

    move v0, v1

    return v0
.end method

.method public ContentPaddingRight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the right padding between the card view edges and the children of card view."
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

    .line 284
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UpdateCard()V

    .line 285
    return-void
.end method

.method public ContentPaddingTop()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:I

    move v0, v1

    return v0
.end method

.method public ContentPaddingTop(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the top padding between the card view edges and the children of card view."
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:I

    .line 275
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UpdateCard()V

    .line 276
    return-void
.end method

.method public CornerRadius()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    move v0, v1

    return v0
.end method

.method public CornerRadius(F)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The corner radius from the card view."
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    .line 248
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setRadius(F)V

    .line 249
    return-void
.end method

.method public Elevation()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    move v0, v1

    return v0
.end method

.method public Elevation(F)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The card view elevation value."
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    .line 256
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setCardElevation(F)V

    .line 257
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setMaxCardElevation(F)V

    .line 258
    return-void
.end method

.method public FullClickable(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, the card will consume all click events. This means if you have added as example buttons into the card, then will the card consume the touch event on the button. And this means that the button would not be clickable, but only the entire card."
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->fullClick:Z

    .line 306
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Z

    .line 307
    return-void
.end method

.method public FullClickable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->fullClick:Z

    move v0, v1

    return v0
.end method

.method public LongClick()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple \"Long click\"."
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "LongClick"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 222
    return-void
.end method

.method public StrokeColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the stroke color from the card view."
    .end annotation

    .prologue
    .line 346
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    move v0, v1

    return v0
.end method

.method public StrokeColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The stroke color for the card view."
    .end annotation

    .prologue
    .line 340
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    .line 341
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setStrokeColor(I)V

    .line 342
    return-void
.end method

.method public StrokeWidth()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the stroke width from the card view."
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    move v0, v1

    return v0
.end method

.method public StrokeWidth(F)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The stroke width for the card view."
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    .line 328
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setStrokeWidth(I)V

    .line 329
    return-void
.end method

.method public TouchColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the touch color also known as ripple color to the card view component."
        userVisible = false
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 316
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    .line 320
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCardView;->backgroundColor:I

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularRippleDrawable;->setRippleDrawable(Landroid/view/View;II)V

    .line 321
    return-void

    .line 318
    :cond_0
    move-object v2, v0

    const v3, -0x333334

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    goto :goto_0
.end method

.method public TouchDown()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple touch down on the card."
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "TouchDown"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 232
    return-void
.end method

.method public TouchUp()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple touch up on the card."
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "TouchUp"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 227
    return-void
.end method

.method public UpdateCard()V
    .locals 7

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCardView;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:I

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidCardView;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:I

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setContentPadding(IIII)V

    .line 211
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->invalidate()V

    .line 212
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->mainLayout:Landroid/view/ViewGroup;

    move-object v0, v1

    return-object v0
.end method

.method public getViewHelper()Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    move-object v0, v1

    return-object v0
.end method

.method public getViewLayout()Lcom/google/appinventor/components/runtime/LinearLayout;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCardView;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v0, v1

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->Click()V

    .line 188
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->LongClick()V

    .line 193
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 200
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->TouchDown()V

    .line 205
    :cond_0
    :goto_0
    const/4 v3, 0x0

    move v0, v3

    return v0

    .line 201
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    move-object v3, v2

    .line 202
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 203
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->TouchUp()V

    goto :goto_0
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 11

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidCardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v4

    move v10, v4

    move v4, v10

    move v5, v10

    .line 169
    move v3, v5

    if-nez v4, :cond_0

    .line 171
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidCardView;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/MakeroidCardView$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/MakeroidCardView$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidCardView;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 178
    :cond_0
    move v4, v2

    const/16 v5, -0x3e8

    if-gt v4, v5, :cond_1

    .line 179
    move v4, v3

    move v5, v2

    const/16 v6, -0x3e8

    add-int/lit16 v5, v5, 0x3e8

    neg-int v5, v5

    mul-int/2addr v4, v5

    const/16 v5, 0x64

    div-int/lit8 v4, v4, 0x64

    move v2, v4

    .line 181
    :cond_1
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 182
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    .line 183
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    .line 138
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 14

    .prologue
    .line 149
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v6

    move v13, v6

    move v6, v13

    move v7, v13

    .line 150
    move v5, v7

    if-nez v6, :cond_0

    move v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 152
    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidCardView;->androidUIHandler:Landroid/os/Handler;

    new-instance v7, Lcom/google/appinventor/components/runtime/MakeroidCardView$1;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/MakeroidCardView$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidCardView;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    .line 159
    :cond_0
    move v6, v3

    const/16 v7, -0x3e8

    if-gt v6, v7, :cond_1

    .line 160
    move v6, v5

    move v7, v3

    const/16 v8, -0x3e8

    add-int/lit16 v7, v7, 0x3e8

    neg-int v7, v7

    mul-int/2addr v6, v7

    const/16 v7, 0x64

    div-int/lit8 v6, v6, 0x64

    move v3, v6

    .line 162
    :cond_1
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 163
    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v6

    move v7, v3

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    .line 164
    return-void
.end method
