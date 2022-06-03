.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "Chip.java"

# interfaces
.implements Lcom/google/android/material/chip/ChipDrawable$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    }
.end annotation


# static fields
.field private static final CLOSE_ICON_VIRTUAL_ID:I = 0x0

.field private static final EMPTY_BOUNDS:Landroid/graphics/Rect;

.field private static final NAMESPACE_ANDROID:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final SELECTED_STATE:[I

.field private static final TAG:Ljava/lang/String; = "Chip"


# instance fields
.field private chipDrawable:Lcom/google/android/material/chip/ChipDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private closeIconFocused:Z

.field private closeIconHovered:Z

.field private closeIconPressed:Z

.field private deferredCheckedValue:Z

.field private focusedVirtualView:I

.field private final fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

.field private onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private onCloseIconClickListener:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final rect:Landroid/graphics/Rect;

.field private final rectF:Landroid/graphics/RectF;

.field private ripple:Landroid/graphics/drawable/RippleDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 121
    new-instance v0, Landroid/graphics/Rect;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a1

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/chip/Chip;->SELECTED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Lcom/google/android/material/R$attr;->chipStyle:I

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    move-object v5, v0

    const/high16 v6, -0x80000000

    iput v6, v5, Lcom/google/android/material/chip/Chip;->focusedVirtualView:I

    .line 144
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    .line 145
    move-object v5, v0

    new-instance v6, Landroid/graphics/RectF;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v5, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    .line 146
    move-object v5, v0

    new-instance v6, Lcom/google/android/material/chip/Chip$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/chip/Chip$1;-><init>(Lcom/google/android/material/chip/Chip;)V

    iput-object v6, v5, Lcom/google/android/material/chip/Chip;->fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 170
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/Chip;->validateAttributes(Landroid/util/AttributeSet;)V

    .line 171
    move-object v5, v1

    move-object v6, v2

    move v7, v3

    sget v8, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Action:I

    .line 172
    invoke-static {v5, v6, v7, v8}, Lcom/google/android/material/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;

    move-result-object v5

    move-object v4, v5

    .line 174
    .local v4, "drawable":Lcom/google/android/material/chip/ChipDrawable;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    .line 175
    move-object v5, v0

    new-instance v6, Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v0

    invoke-direct {v7, v8, v9}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object v6, v5, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 176
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 178
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/Chip;->initOutlineProvider()V

    .line 180
    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/material/chip/Chip;->deferredCheckedValue:Z

    invoke-virtual {v5, v6}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 183
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/material/chip/ChipDrawable;->setShouldDrawText(Z)V

    .line 184
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 185
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Lcom/google/android/material/chip/ChipDrawable;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 187
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/material/chip/Chip;->setIncludeFontPadding(Z)V

    .line 188
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 189
    move-object v5, v0

    move-object v6, v0

    invoke-direct {v6}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState(Lcom/google/android/material/resources/TextAppearance;)V

    .line 192
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/Chip;->setSingleLine()V

    .line 195
    move-object v5, v0

    const v6, 0x800013

    invoke-virtual {v5, v6}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 197
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/ChipDrawable;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/chip/Chip;
    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/chip/Chip;)Z
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/google/android/material/chip/Chip;
    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/chip/Chip;
    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/chip/Chip;
    return-object v0
.end method

.method static synthetic access$400()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/google/android/material/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    return-object v0
.end method

.method private applyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .locals 4
    .param p1    # Lcom/google/android/material/chip/ChipDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "chipDrawable":Lcom/google/android/material/chip/ChipDrawable;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V

    .line 328
    return-void
.end method

.method private calculateTextOffsetFromStart(Lcom/google/android/material/chip/ChipDrawable;)F
    .locals 5
    .param p1    # Lcom/google/android/material/chip/ChipDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "chipDrawable":Lcom/google/android/material/chip/ChipDrawable;
    move-object v3, v0

    .line 363
    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->getChipStartPadding()F

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v4

    add-float/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->getTextStartPadding()F

    move-result v4

    add-float/2addr v3, v4

    move v2, v3

    .line 364
    .local v2, "offsetFromStart":F
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    .line 365
    move v3, v2

    move v0, v3

    .line 367
    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    move v3, v2

    neg-float v3, v3

    move v0, v3

    goto :goto_0
.end method

.method private createCloseIconDrawableState()[I
    .locals 7

    .prologue
    .line 881
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    const/4 v4, 0x0

    move v1, v4

    .line 882
    .local v1, "count":I
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 883
    add-int/lit8 v1, v1, 0x1

    .line 885
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    if-eqz v4, :cond_1

    .line 886
    add-int/lit8 v1, v1, 0x1

    .line 888
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    if-eqz v4, :cond_2

    .line 889
    add-int/lit8 v1, v1, 0x1

    .line 891
    :cond_2
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v4, :cond_3

    .line 892
    add-int/lit8 v1, v1, 0x1

    .line 894
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 895
    add-int/lit8 v1, v1, 0x1

    .line 898
    :cond_4
    move v4, v1

    new-array v4, v4, [I

    move-object v2, v4

    .line 899
    .local v2, "stateSet":[I
    const/4 v4, 0x0

    move v3, v4

    .line 901
    .local v3, "i":I
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 902
    move-object v4, v2

    move v5, v3

    const v6, 0x101009e

    aput v6, v4, v5

    .line 903
    add-int/lit8 v3, v3, 0x1

    .line 905
    :cond_5
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    if-eqz v4, :cond_6

    .line 906
    move-object v4, v2

    move v5, v3

    const v6, 0x101009c

    aput v6, v4, v5

    .line 907
    add-int/lit8 v3, v3, 0x1

    .line 909
    :cond_6
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    if-eqz v4, :cond_7

    .line 910
    move-object v4, v2

    move v5, v3

    const v6, 0x1010367

    aput v6, v4, v5

    .line 911
    add-int/lit8 v3, v3, 0x1

    .line 913
    :cond_7
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v4, :cond_8

    .line 914
    move-object v4, v2

    move v5, v3

    const v6, 0x10100a7

    aput v6, v4, v5

    .line 915
    add-int/lit8 v3, v3, 0x1

    .line 917
    :cond_8
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 918
    move-object v4, v2

    move v5, v3

    const v6, 0x10100a1

    aput v6, v4, v5

    .line 919
    add-int/lit8 v3, v3, 0x1

    .line 921
    :cond_9
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0
.end method

.method private ensureFocus()V
    .locals 3

    .prologue
    .line 818
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/chip/Chip;->focusedVirtualView:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 819
    move-object v1, v0

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/google/android/material/chip/Chip;->setFocusedVirtualView(I)V

    .line 821
    :cond_0
    return-void
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 929
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 931
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 933
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconTouchBounds(Landroid/graphics/RectF;)V

    .line 936
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 940
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v2

    move-object v1, v2

    .line 941
    .local v1, "bounds":Landroid/graphics/RectF;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    move-object v3, v1

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object v4, v1

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    move-object v5, v1

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    move-object v6, v1

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 942
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0
.end method

.method private getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1166
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleAccessibilityExit(Landroid/view/MotionEvent;)Z
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 684
    :try_start_0
    const-class v5, Landroidx/customview/widget/ExploreByTouchHelper;

    const-string/jumbo v6, "mHoveredVirtualViewId"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v2, v5

    .line 685
    .local v2, "f":Ljava/lang/reflect/Field;
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 686
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    .line 688
    .local v3, "mHoveredVirtualViewId":I
    move v5, v3

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_0

    .line 689
    const-class v5, Landroidx/customview/widget/ExploreByTouchHelper;

    const-string/jumbo v6, "updateHoveredVirtualView"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    .line 690
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v4, v5

    .line 691
    .local v4, "m":Ljava/lang/reflect/Method;
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 692
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const/high16 v10, -0x80000000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 693
    const/4 v5, 0x1

    move v0, v5

    .line 709
    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "mHoveredVirtualViewId":I
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return v0

    .line 707
    .line 709
    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    :goto_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 695
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 697
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v5, "Chip"

    const-string/jumbo v6, "Unable to send Accessibility Exit event"

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 707
    goto :goto_1

    .line 698
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 700
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "Chip"

    const-string/jumbo v6, "Unable to send Accessibility Exit event"

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 707
    goto :goto_1

    .line 701
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 703
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v5, "Chip"

    const-string/jumbo v6, "Unable to send Accessibility Exit event"

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 707
    goto :goto_1

    .line 704
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v5

    move-object v2, v5

    .line 706
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v5, "Chip"

    const-string/jumbo v6, "Unable to send Accessibility Exit event"

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_1
.end method

.method private hasCloseIcon()Z
    .locals 2

    .prologue
    .line 925
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initOutlineProvider()V
    .locals 6

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 276
    move-object v1, v0

    new-instance v2, Lcom/google/android/material/chip/Chip$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/material/chip/Chip$2;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/chip/Chip;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 289
    :cond_0
    return-void
.end method

.method private moveFocus(Z)Z
    .locals 5

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "positive":Z
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/Chip;->ensureFocus()V

    .line 802
    const/4 v3, 0x0

    move v2, v3

    .line 803
    .local v2, "focusChanged":Z
    move v3, v1

    if-eqz v3, :cond_1

    .line 804
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/chip/Chip;->focusedVirtualView:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 805
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/material/chip/Chip;->setFocusedVirtualView(I)V

    .line 806
    const/4 v3, 0x1

    move v2, v3

    .line 814
    :cond_0
    :goto_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .line 809
    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/chip/Chip;->focusedVirtualView:I

    if-nez v3, :cond_0

    .line 810
    move-object v3, v0

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/google/android/material/chip/Chip;->setFocusedVirtualView(I)V

    .line 811
    const/4 v3, 0x1

    move v2, v3

    goto :goto_0
.end method

.method private setCloseIconFocused(Z)V
    .locals 4

    .prologue
    .line 859
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "focused":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 860
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    .line 861
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    .line 863
    :cond_0
    return-void
.end method

.method private setCloseIconHovered(Z)V
    .locals 4

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "hovered":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 853
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    .line 854
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    .line 856
    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 4

    .prologue
    .line 845
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "pressed":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 846
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    .line 847
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    .line 849
    :cond_0
    return-void
.end method

.method private setFocusedVirtualView(I)V
    .locals 4

    .prologue
    .line 833
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "virtualView":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/Chip;->focusedVirtualView:I

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 834
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/Chip;->focusedVirtualView:I

    if-nez v2, :cond_0

    .line 835
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconFocused(Z)V

    .line 837
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/chip/Chip;->focusedVirtualView:I

    .line 838
    move v2, v1

    if-nez v2, :cond_1

    .line 839
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconFocused(Z)V

    .line 842
    :cond_1
    return-void
.end method

.method private unapplyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .locals 4
    .param p1    # Lcom/google/android/material/chip/ChipDrawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "chipDrawable":Lcom/google/android/material/chip/ChipDrawable;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 322
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V

    .line 324
    :cond_0
    return-void
.end method

.method private updatePaddingInternal()V
    .locals 7

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v2, :cond_1

    .line 206
    .line 238
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 209
    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->getChipStartPadding()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 210
    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getChipEndPadding()F

    move-result v3

    add-float/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 211
    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getTextStartPadding()F

    move-result v3

    add-float/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 212
    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getTextEndPadding()F

    move-result v3

    add-float/2addr v2, v3

    move v1, v2

    .line 214
    .local v1, "paddingEnd":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->isChipIconVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 215
    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 216
    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->isCheckedIconVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v0

    .line 217
    invoke-virtual {v2}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    :cond_3
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 219
    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getIconStartPadding()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 220
    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->getIconEndPadding()F

    move-result v4

    add-float/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 221
    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->getChipIconSize()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    move v1, v2

    .line 223
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 224
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 225
    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconStartPadding()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 226
    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconEndPadding()F

    move-result v4

    add-float/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 227
    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconSize()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    move v1, v2

    .line 230
    :cond_5
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    .line 231
    move-object v2, v0

    move-object v3, v0

    .line 233
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v3

    move-object v4, v0

    .line 234
    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->getPaddingTop()I

    move-result v4

    move v5, v1

    float-to-int v5, v5

    move-object v6, v0

    .line 236
    invoke-virtual {v6}, Lcom/google/android/material/chip/Chip;->getPaddingBottom()I

    move-result v6

    .line 231
    invoke-static {v2, v3, v4, v5, v6}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 238
    :cond_6
    goto/16 :goto_0
.end method

.method private updateTextPaintDrawState(Lcom/google/android/material/resources/TextAppearance;)V
    .locals 7

    .prologue
    .line 1170
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "textAppearance":Lcom/google/android/material/resources/TextAppearance;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    move-object v2, v3

    .line 1171
    .local v2, "textPaint":Landroid/text/TextPaint;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v4

    iput-object v4, v3, Landroid/text/TextPaint;->drawableState:[I

    .line 1172
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/Chip;->fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 1173
    return-void
.end method

.method private validateAttributes(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "attributeSet":Landroid/util/AttributeSet;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 242
    .line 272
    :goto_0
    return-void

    .line 244
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "background"

    invoke-interface {v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 245
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Do not set the background; Chip manages its own background drawable."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "drawableLeft"

    invoke-interface {v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 249
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_2
    move-object v2, v1

    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "drawableStart"

    invoke-interface {v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 252
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_3
    move-object v2, v1

    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "drawableEnd"

    invoke-interface {v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 255
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_4
    move-object v2, v1

    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "drawableRight"

    invoke-interface {v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 258
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_5
    move-object v2, v1

    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "singleLine"

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v1

    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "lines"

    const/4 v5, 0x1

    .line 261
    invoke-interface {v2, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    move-object v2, v1

    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "minLines"

    const/4 v5, 0x1

    .line 262
    invoke-interface {v2, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    move-object v2, v1

    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "maxLines"

    const/4 v5, 0x1

    .line 263
    invoke-interface {v2, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    .line 264
    :cond_6
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Chip does not support multi-line text"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_7
    move-object v2, v1

    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "gravity"

    const v5, 0x800013

    invoke-interface {v2, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const v3, 0x800013

    if-eq v2, v3, :cond_8

    .line 270
    const-string/jumbo v2, "Chip"

    const-string/jumbo v3, "Chip text must be vertically center and start aligned"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 272
    :cond_8
    goto/16 :goto_0
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 714
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/chip/Chip;->handleAccessibilityExit(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    move-object v3, v1

    .line 715
    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    .line 716
    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 714
    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .line 716
    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 867
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v2, v0

    invoke-super {v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 869
    const/4 v2, 0x0

    move v1, v2

    .line 871
    .local v1, "changed":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 872
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/Chip;->createCloseIconDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconState([I)Z

    move-result v2

    move v1, v2

    .line 875
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    .line 876
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/chip/Chip;->invalidate()V

    .line 878
    :cond_1
    return-void
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1460
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1029
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChipCornerRadius()F
    .locals 2

    .prologue
    .line 1061
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0
.end method

.method public getChipEndPadding()F
    .locals 2

    .prologue
    .line 1622
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipEndPadding()F

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1252
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChipIconSize()F
    .locals 2

    .prologue
    .line 1298
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipIconSize()F

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1270
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipIconTint()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChipMinHeight()F
    .locals 2

    .prologue
    .line 1045
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipMinHeight()F

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChipStartPadding()F
    .locals 2

    .prologue
    .line 1510
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipStartPadding()F

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1078
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChipStrokeWidth()F
    .locals 2

    .prologue
    .line 1094
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipStrokeWidth()F

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1134
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1349
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1405
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCloseIconEndPadding()F
    .locals 2

    .prologue
    .line 1606
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconEndPadding()F

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCloseIconSize()F
    .locals 2

    .prologue
    .line 1382
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconSize()F

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCloseIconStartPadding()F
    .locals 2

    .prologue
    .line 1590
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconStartPadding()F

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1366
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconTint()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 2

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "r":Landroid/graphics/Rect;
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/chip/Chip;->focusedVirtualView:I

    if-nez v2, :cond_0

    .line 826
    move-object v2, v1

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 830
    :goto_0
    return-void

    .line 828
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1494
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIconEndPadding()F
    .locals 2

    .prologue
    .line 1542
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getIconEndPadding()F

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIconStartPadding()F
    .locals 2

    .prologue
    .line 1526
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getIconStartPadding()F

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1111
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1477
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1128
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getTextEndPadding()F
    .locals 2

    .prologue
    .line 1574
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getTextEndPadding()F

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTextStartPadding()F
    .locals 2

    .prologue
    .line 1558
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getTextStartPadding()F

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    .line 1409
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCheckedIconEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1431
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/chip/Chip;->isCheckedIconVisible()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0
.end method

.method public isCheckedIconVisible()Z
    .locals 2

    .prologue
    .line 1425
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->isCheckedIconVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChipIconEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1223
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/chip/Chip;->isChipIconVisible()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0
.end method

.method public isChipIconVisible()Z
    .locals 2

    .prologue
    .line 1217
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->isChipIconVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCloseIconEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1320
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/chip/Chip;->isCloseIconVisible()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0
.end method

.method public isCloseIconVisible()Z
    .locals 2

    .prologue
    .line 1314
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChipDrawableSizeChange()V
    .locals 3

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    .line 564
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/chip/Chip;->requestLayout()V

    .line 565
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 566
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/chip/Chip;->invalidateOutline()V

    .line 568
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "extraSpace":I
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-super {v3, v4}, Landroidx/appcompat/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    move-result-object v3

    move-object v2, v3

    .line 333
    .local v2, "state":[I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    move-object v3, v2

    sget-object v4, Lcom/google/android/material/chip/Chip;->SELECTED_STATE:[I

    invoke-static {v3, v4}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    move-result-object v3

    .line 336
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 343
    .line 350
    :goto_0
    return-void

    .line 346
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v3

    move v2, v3

    .line 347
    .local v2, "saveCount":I
    move-object v3, v1

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-direct {v4, v5}, Lcom/google/android/material/chip/Chip;->calculateTextOffsetFromStart(Lcom/google/android/material/chip/ChipDrawable;)F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 348
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 349
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 350
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "focused":Z
    move v2, p2

    .local v2, "direction":I
    move-object v3, p3

    .local v3, "previouslyFocusedRect":Landroid/graphics/Rect;
    move v4, v1

    if-eqz v4, :cond_0

    .line 728
    move-object v4, v0

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lcom/google/android/material/chip/Chip;->setFocusedVirtualView(I)V

    .line 732
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->invalidate()V

    .line 734
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatCheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 735
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 736
    return-void

    .line 730
    :cond_0
    move-object v4, v0

    const/high16 v5, -0x80000000

    invoke-direct {v4, v5}, Lcom/google/android/material/chip/Chip;->setFocusedVirtualView(I)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    move v2, v3

    .line 663
    .local v2, "action":I
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 673
    :goto_0
    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/widget/AppCompatCheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .line 665
    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :pswitch_1
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 666
    goto :goto_0

    .line 668
    :pswitch_2
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 669
    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    const/4 v7, 0x0

    move v3, v7

    .line 744
    .local v3, "focusChanged":Z
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 792
    :cond_0
    :goto_0
    move v7, v3

    if-eqz v7, :cond_7

    .line 793
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/chip/Chip;->invalidate()V

    .line 794
    const/4 v7, 0x1

    move v0, v7

    .line 796
    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    :goto_1
    return v0

    .line 746
    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :sswitch_0
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 747
    move-object v7, v0

    move-object v8, v0

    invoke-static {v8}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    invoke-direct {v7, v8}, Lcom/google/android/material/chip/Chip;->moveFocus(Z)Z

    move-result v7

    move v3, v7

    goto :goto_0

    .line 751
    :sswitch_1
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 752
    move-object v7, v0

    move-object v8, v0

    invoke-static {v8}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_2
    invoke-direct {v7, v8}, Lcom/google/android/material/chip/Chip;->moveFocus(Z)Z

    move-result v7

    move v3, v7

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 757
    :sswitch_2
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/chip/Chip;->focusedVirtualView:I

    packed-switch v7, :pswitch_data_0

    .line 766
    goto :goto_0

    .line 759
    :pswitch_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/chip/Chip;->performClick()Z

    move-result v7

    .line 760
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    .line 762
    :pswitch_1
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/chip/Chip;->performCloseIconClick()Z

    move-result v7

    .line 763
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    .line 770
    :sswitch_3
    const/4 v7, 0x0

    move v4, v7

    .line 771
    .local v4, "focusChangeDirection":I
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 772
    const/4 v7, 0x2

    move v4, v7

    .line 776
    :cond_2
    :goto_3
    move v7, v4

    if-eqz v7, :cond_0

    .line 777
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/chip/Chip;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v5, v7

    .line 779
    .local v5, "parent":Landroid/view/ViewParent;
    move-object v7, v0

    move-object v6, v7

    .line 781
    .local v6, "nextFocus":Landroid/view/View;
    :cond_3
    move-object v7, v6

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 782
    move-object v7, v6

    if-eqz v7, :cond_4

    move-object v7, v6

    move-object v8, v0

    if-eq v7, v8, :cond_4

    move-object v7, v6

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v8, v5

    if-eq v7, v8, :cond_3

    .line 783
    :cond_4
    move-object v7, v6

    if-eqz v7, :cond_6

    .line 784
    move-object v7, v6

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    move-result v7

    .line 785
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    .line 773
    .end local v5    # "parent":Landroid/view/ViewParent;
    .end local v6    # "nextFocus":Landroid/view/View;
    :cond_5
    move-object v7, v2

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 774
    const/4 v7, 0x1

    move v4, v7

    goto :goto_3

    .line 787
    .restart local v5    # "parent":Landroid/view/ViewParent;
    .restart local v6    # "nextFocus":Landroid/view/View;
    :cond_6
    goto/16 :goto_0

    .line 796
    .end local v4    # "focusChangeDirection":I
    .end local v5    # "parent":Landroid/view/ViewParent;
    .end local v6    # "nextFocus":Landroid/view/View;
    :cond_7
    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-super {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatCheckBox;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    move v0, v7

    goto/16 :goto_1

    .line 744
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x3d -> :sswitch_3
        0x42 -> :sswitch_2
    .end sparse-switch

    .line 757
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 948
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move v2, p2

    .local v2, "pointerIndex":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v3

    move-object v0, v3

    .line 951
    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    const/4 v5, 0x0

    move v2, v5

    .line 628
    .local v2, "handled":Z
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    move v3, v5

    .line 629
    .local v3, "action":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    move v4, v5

    .line 630
    .local v4, "eventInCloseIcon":Z
    move v5, v3

    packed-switch v5, :pswitch_data_0

    .line 657
    :cond_0
    :goto_0
    move v5, v2

    if-nez v5, :cond_1

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroidx/appcompat/widget/AppCompatCheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v5, 0x1

    :goto_1
    move v0, v5

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .line 632
    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :pswitch_0
    move v5, v4

    if-eqz v5, :cond_0

    .line 633
    move-object v5, v0

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    .line 634
    const/4 v5, 0x1

    move v2, v5

    goto :goto_0

    .line 638
    :pswitch_1
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v5, :cond_0

    .line 639
    move v5, v4

    if-nez v5, :cond_2

    .line 640
    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    .line 642
    :cond_2
    const/4 v5, 0x1

    move v2, v5

    goto :goto_0

    .line 646
    :pswitch_2
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v5, :cond_3

    .line 647
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/Chip;->performCloseIconClick()Z

    move-result v5

    .line 648
    const/4 v5, 0x1

    move v2, v5

    .line 652
    :cond_3
    :pswitch_3
    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    .line 653
    goto :goto_0

    .line 657
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performCloseIconClick()Z
    .locals 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->playSoundEffect(I)V

    .line 612
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    .line 613
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    move-object v3, v0

    invoke-interface {v2, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 614
    const/4 v2, 0x1

    move v1, v2

    .line 619
    .local v1, "result":Z
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->sendEventForVirtualView(II)Z

    move-result v2

    .line 621
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/chip/Chip;
    return v0

    .line 616
    .end local v1    # "result":Z
    .restart local v0    # "this":Lcom/google/android/material/chip/Chip;
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eq v2, v3, :cond_0

    .line 397
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Do not set the background; Chip manages its own background drawable."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 402
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 6

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "color":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Do not set the background color; Chip manages its own background drawable."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eq v2, v3, :cond_0

    .line 407
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Do not set the background drawable; Chip manages its own background drawable."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 410
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 6

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "resid":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Do not set the background resource; Chip manages its own background drawable."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 6
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 6
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setCheckable(Z)V
    .locals 4

    .prologue
    .line 1419
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "checkable":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1420
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    .line 1422
    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 1413
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1414
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCheckableResource(I)V

    .line 1416
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 6

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "checked":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v3, :cond_1

    .line 574
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/android/material/chip/Chip;->deferredCheckedValue:Z

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->isCheckable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v3

    move v2, v3

    .line 577
    .local v2, "wasChecked":Z
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 579
    move v3, v2

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 580
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v3, :cond_0

    .line 581
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object v4, v0

    move v5, v1

    invoke-interface {v3, v4, v5}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1470
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "checkedIcon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1471
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1473
    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1455
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "checkedIconEnabled":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    .line 1456
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1449
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    .line 1450
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 1464
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1465
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconResource(I)V

    .line 1467
    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 1435
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1436
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(I)V

    .line 1438
    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 4

    .prologue
    .line 1441
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "checkedIconVisible":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1442
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 1444
    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1039
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "chipBackgroundColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1040
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 1042
    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1033
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1034
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColorResource(I)V

    .line 1036
    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 4

    .prologue
    .line 1071
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "chipCornerRadius":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1072
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 1074
    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1065
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1066
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadiusResource(I)V

    .line 1068
    :cond_0
    return-void
.end method

.method public setChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .locals 9
    .param p1    # Lcom/google/android/material/chip/ChipDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "drawable":Lcom/google/android/material/chip/ChipDrawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 299
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-direct {v2, v3}, Lcom/google/android/material/chip/Chip;->unapplyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    .line 300
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 301
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-direct {v2, v3}, Lcom/google/android/material/chip/Chip;->applyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    .line 303
    sget-boolean v2, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v2, :cond_1

    .line 305
    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 307
    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v2, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    .line 310
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 312
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 315
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setChipEndPadding(F)V
    .locals 4

    .prologue
    .line 1632
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "chipEndPadding":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1633
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 1635
    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1626
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1627
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPaddingResource(I)V

    .line 1629
    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1262
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "chipIcon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1263
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1265
    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1247
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "chipIconEnabled":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    .line 1248
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1241
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    .line 1242
    return-void
.end method

.method public setChipIconResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 1256
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1257
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconResource(I)V

    .line 1259
    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 4

    .prologue
    .line 1308
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "chipIconSize":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1309
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    .line 1311
    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1302
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1303
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSizeResource(I)V

    .line 1305
    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1292
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "chipIconTint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1293
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 1295
    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1280
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1281
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTintResource(I)V

    .line 1283
    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 1227
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1228
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(I)V

    .line 1230
    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 4

    .prologue
    .line 1233
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "chipIconVisible":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1234
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 1236
    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 4

    .prologue
    .line 1055
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "minHeight":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1056
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 1058
    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1049
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1050
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeightResource(I)V

    .line 1052
    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 4

    .prologue
    .line 1520
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "chipStartPadding":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1521
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 1523
    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1514
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1515
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPaddingResource(I)V

    .line 1517
    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1088
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "chipStrokeColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1089
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1091
    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1082
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1083
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColorResource(I)V

    .line 1085
    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 4

    .prologue
    .line 1104
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "chipStrokeWidth":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1105
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 1107
    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1098
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1099
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidthResource(I)V

    .line 1101
    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1161
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "chipText":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    return-void
.end method

.method public setChipTextResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1155
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1359
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "closeIcon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1360
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1362
    :cond_0
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1398
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "closeIconContentDescription":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1399
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconContentDescription(Ljava/lang/CharSequence;)V

    .line 1401
    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1344
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "closeIconEnabled":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    .line 1345
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1338
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    .line 1339
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 4

    .prologue
    .line 1616
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "closeIconEndPadding":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1617
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 1619
    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1610
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1611
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPaddingResource(I)V

    .line 1613
    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 1353
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1354
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconResource(I)V

    .line 1356
    :cond_0
    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 4

    .prologue
    .line 1392
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "closeIconSize":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1393
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 1395
    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1386
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1387
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSizeResource(I)V

    .line 1389
    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 4

    .prologue
    .line 1600
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "closeIconStartPadding":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1601
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 1603
    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1594
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1595
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPaddingResource(I)V

    .line 1597
    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1376
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "closeIconTint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1377
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 1379
    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1370
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1371
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTintResource(I)V

    .line 1373
    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .prologue
    .line 1324
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1325
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(I)V

    .line 1327
    :cond_0
    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 4

    .prologue
    .line 1330
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "closeIconVisible":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1331
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 1333
    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "left":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "top":Landroid/graphics/drawable/Drawable;
    move-object v3, p3

    .local v3, "right":Landroid/graphics/drawable/Drawable;
    move-object v4, p4

    .local v4, "bottom":Landroid/graphics/drawable/Drawable;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 421
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 423
    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 424
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 427
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 428
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "start":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "top":Landroid/graphics/drawable/Drawable;
    move-object v3, p3

    .local v3, "end":Landroid/graphics/drawable/Drawable;
    move-object v4, p4

    .local v4, "bottom":Landroid/graphics/drawable/Drawable;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 465
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 467
    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 468
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 471
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 472
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 11

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "end":I
    move v4, p4

    .local v4, "bottom":I
    move v5, v1

    if-eqz v5, :cond_0

    .line 478
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 480
    :cond_0
    move v5, v3

    if-eqz v5, :cond_1

    .line 481
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 484
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 485
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "start":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "top":Landroid/graphics/drawable/Drawable;
    move-object v3, p3

    .local v3, "end":Landroid/graphics/drawable/Drawable;
    move-object v4, p4

    .local v4, "bottom":Landroid/graphics/drawable/Drawable;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 494
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 496
    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 497
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 499
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 500
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 11

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move v5, v1

    if-eqz v5, :cond_0

    .line 433
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 435
    :cond_0
    move v5, v3

    if-eqz v5, :cond_1

    .line 436
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 439
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 440
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "left":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "top":Landroid/graphics/drawable/Drawable;
    move-object v3, p3

    .local v3, "right":Landroid/graphics/drawable/Drawable;
    move-object v4, p4

    .local v4, "bottom":Landroid/graphics/drawable/Drawable;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 449
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 451
    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 452
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 455
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 456
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 6

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "where":Landroid/text/TextUtils$TruncateAt;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v2, :cond_0

    .line 510
    .line 519
    :goto_0
    return-void

    .line 512
    :cond_0
    move-object v2, v1

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_1

    .line 513
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Text within a chip are not allowed to scroll."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 515
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 516
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_2

    .line 517
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 519
    :cond_2
    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 4

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "gravity":I
    move v2, v1

    const v3, 0x800013

    if-eq v2, v3, :cond_0

    .line 355
    const-string/jumbo v2, "Chip"

    const-string/jumbo v3, "Chip text must be vertically center and start aligned"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setGravity(I)V

    goto :goto_0
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 4
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1504
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "hideMotionSpec":Lcom/google/android/material/animation/MotionSpec;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1505
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 1507
    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .prologue
    .line 1498
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1499
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpecResource(I)V

    .line 1501
    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 4

    .prologue
    .line 1552
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "iconEndPadding":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1553
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 1555
    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1546
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1547
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPaddingResource(I)V

    .line 1549
    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 4

    .prologue
    .line 1536
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "iconStartPadding":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1537
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 1539
    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1531
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPaddingResource(I)V

    .line 1533
    :cond_0
    return-void
.end method

.method public setLines(I)V
    .locals 6

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "lines":I
    move v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 532
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Chip does not support multi-line text"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 534
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLines(I)V

    .line 535
    return-void
.end method

.method public setMaxLines(I)V
    .locals 6

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "maxLines":I
    move v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 548
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Chip does not support multi-line text"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 550
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxLines(I)V

    .line 551
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "maxWidth":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxWidth(I)V

    .line 556
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 557
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setMaxWidth(I)V

    .line 559
    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 6

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "minLines":I
    move v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 540
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Chip does not support multi-line text"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 542
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMinLines(I)V

    .line 543
    return-void
.end method

.method setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 4

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "listener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 593
    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "listener":Landroid/view/View$OnClickListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    .line 598
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1121
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "rippleColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1122
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1124
    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 1115
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1116
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColorResource(I)V

    .line 1118
    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 4
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1487
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "showMotionSpec":Lcom/google/android/material/animation/MotionSpec;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1488
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 1490
    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .prologue
    .line 1481
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1482
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpecResource(I)V

    .line 1484
    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 6

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "singleLine":Z
    move v2, v1

    if-nez v2, :cond_0

    .line 524
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Chip does not support multi-line text"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 526
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSingleLine(Z)V

    .line 527
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7

    .prologue
    .line 1139
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "type":Landroid/widget/TextView$BufferType;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v4, :cond_0

    .line 1140
    .line 1150
    :goto_0
    return-void

    .line 1142
    :cond_0
    move-object v4, v1

    if-nez v4, :cond_1

    .line 1143
    const-string/jumbo v4, ""

    move-object v1, v4

    .line 1145
    :cond_1
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v3, v4

    .line 1146
    .local v3, "unicodeWrappedText":Ljava/lang/CharSequence;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v5}, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1147
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v4, :cond_2

    .line 1148
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    :cond_2
    goto :goto_0

    .line 1146
    :cond_3
    move-object v5, v3

    goto :goto_1
.end method

.method public setTextAppearance(I)V
    .locals 6

    .prologue
    .line 1206
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(I)V

    .line 1207
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1208
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearanceResource(I)V

    .line 1210
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1211
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/Chip;->fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 1212
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState(Lcom/google/android/material/resources/TextAppearance;)V

    .line 1214
    :cond_1
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 7

    .prologue
    .line 1194
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(Landroid/content/Context;I)V

    .line 1195
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v3, :cond_0

    .line 1196
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearanceResource(I)V

    .line 1198
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1199
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v3

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/Chip;->fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 1200
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState(Lcom/google/android/material/resources/TextAppearance;)V

    .line 1202
    :cond_1
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .locals 6
    .param p1    # Lcom/google/android/material/resources/TextAppearance;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1183
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move-object v1, p1

    .local v1, "textAppearance":Lcom/google/android/material/resources/TextAppearance;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1184
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 1186
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1187
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/Chip;->fontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 1188
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState(Lcom/google/android/material/resources/TextAppearance;)V

    .line 1190
    :cond_1
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 1176
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1177
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearanceResource(I)V

    .line 1179
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    .line 1180
    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 4

    .prologue
    .line 1584
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "textEndPadding":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1585
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 1587
    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1578
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1579
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPaddingResource(I)V

    .line 1581
    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 4

    .prologue
    .line 1568
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "textStartPadding":F
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1569
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 1571
    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 1562
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v2, :cond_0

    .line 1563
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPaddingResource(I)V

    .line 1565
    :cond_0
    return-void
.end method
