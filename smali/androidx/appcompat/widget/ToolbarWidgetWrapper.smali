.class public Landroidx/appcompat/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroidx/appcompat/widget/DecorToolbar;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field mToolbar:Landroidx/appcompat/widget/Toolbar;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 8

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "toolbar":Landroidx/appcompat/widget/Toolbar;
    move v2, p2

    .local v2, "style":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    sget v6, Landroidx/appcompat/R$string;->abc_action_bar_up_description:I

    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_ab_back_material:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;ZII)V
    .locals 25

    .prologue
    .line 101
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object/from16 v3, p1

    .local v3, "toolbar":Landroidx/appcompat/widget/Toolbar;
    move/from16 v4, p2

    .local v4, "style":Z
    move/from16 v5, p3

    .local v5, "defaultNavigationContentDescription":I
    move/from16 v6, p4

    .local v6, "defaultNavigationIcon":I
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    .line 90
    move-object/from16 v19, v2

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 92
    move-object/from16 v19, v2

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 102
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 103
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 104
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 105
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 106
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 107
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    sget-object v21, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v22, Landroidx/appcompat/R$attr;->actionBarStyle:I

    const/16 v23, 0x0

    invoke-static/range {v19 .. v23}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v19

    move-object/from16 v7, v19

    .line 109
    .local v7, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object/from16 v19, v2

    move-object/from16 v20, v7

    sget v21, Landroidx/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual/range {v20 .. v21}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 110
    move/from16 v19, v4

    if-eqz v19, :cond_d

    .line 111
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v8, v19

    .line 112
    .local v8, "title":Ljava/lang/CharSequence;
    move-object/from16 v19, v8

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 113
    move-object/from16 v19, v2

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v9, v19

    .line 117
    .local v9, "subtitle":Ljava/lang/CharSequence;
    move-object/from16 v19, v9

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 118
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 121
    :cond_1
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v10, v19

    .line 122
    .local v10, "logo":Landroid/graphics/drawable/Drawable;
    move-object/from16 v19, v10

    if-eqz v19, :cond_2

    .line 123
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_2
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v11, v19

    .line 127
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v19, v11

    if-eqz v19, :cond_3

    .line 128
    move-object/from16 v19, v2

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 131
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v20, v7

    sget v21, Landroidx/appcompat/R$styleable;->ActionBar_displayOptions:I

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 135
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v12, v19

    .line 137
    .local v12, "customNavId":I
    move/from16 v19, v12

    if-eqz v19, :cond_5

    .line 138
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    move/from16 v21, v12

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 140
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    move/from16 v20, v0

    const/16 v21, 0x10

    or-int/lit8 v20, v20, 0x10

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 143
    :cond_5
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v19

    move/from16 v13, v19

    .line 144
    .local v13, "height":I
    move/from16 v19, v13

    if-lez v19, :cond_6

    .line 145
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/appcompat/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v14, v19

    .line 146
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v19, v14

    move/from16 v20, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 v19, v0

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    const/16 v21, -0x1

    invoke-virtual/range {v19 .. v21}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v19

    move/from16 v14, v19

    .line 152
    .local v14, "contentInsetStart":I
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    const/16 v21, -0x1

    invoke-virtual/range {v19 .. v21}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v19

    move/from16 v15, v19

    .line 154
    .local v15, "contentInsetEnd":I
    move/from16 v19, v14

    if-gez v19, :cond_7

    move/from16 v19, v15

    if-ltz v19, :cond_8

    .line 155
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 v19, v0

    move/from16 v20, v14

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v21, v15

    const/16 v22, 0x0

    .line 156
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 155
    invoke-virtual/range {v19 .. v21}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 159
    :cond_8
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v16, v19

    .line 160
    .local v16, "titleTextStyle":I
    move/from16 v19, v16

    if-eqz v19, :cond_9

    .line 161
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v20

    move/from16 v21, v16

    invoke-virtual/range {v19 .. v21}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 164
    :cond_9
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v17, v19

    .line 166
    .local v17, "subtitleTextStyle":I
    move/from16 v19, v17

    if-eqz v19, :cond_a

    .line 167
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v20

    move/from16 v21, v17

    invoke-virtual/range {v19 .. v21}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 170
    :cond_a
    move-object/from16 v19, v7

    sget v20, Landroidx/appcompat/R$styleable;->ActionBar_popupTheme:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v18, v19

    .line 171
    .local v18, "popupTheme":I
    move/from16 v19, v18

    if-eqz v19, :cond_b

    .line 172
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 v19, v0

    move/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 174
    .line 177
    .end local v8    # "title":Ljava/lang/CharSequence;
    .end local v9    # "subtitle":Ljava/lang/CharSequence;
    .end local v10    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "customNavId":I
    .end local v13    # "height":I
    .end local v14    # "contentInsetStart":I
    .end local v15    # "contentInsetEnd":I
    .end local v16    # "titleTextStyle":I
    .end local v17    # "subtitleTextStyle":I
    .end local v18    # "popupTheme":I
    :cond_b
    :goto_1
    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 179
    move-object/from16 v19, v2

    move/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 180
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 182
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 v19, v0

    new-instance v20, Landroidx/appcompat/widget/ToolbarWidgetWrapper$1;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v22}, Landroidx/appcompat/widget/ToolbarWidgetWrapper$1;-><init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;)V

    invoke-virtual/range {v19 .. v20}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void

    .line 105
    .end local v7    # "a":Landroidx/appcompat/widget/TintTypedArray;
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 175
    .restart local v7    # "a":Landroidx/appcompat/widget/TintTypedArray;
    :cond_d
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v20}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    goto :goto_1
.end method

.method private detectDisplayOptions()I
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    const/16 v2, 0xb

    move v1, v2

    .line 208
    .local v1, "opts":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    move v2, v1

    const/4 v3, 0x4

    or-int/lit8 v2, v2, 0x4

    move v1, v2

    .line 210
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 212
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0
.end method

.method private ensureSpinner()V
    .locals 9

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_0

    .line 504
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/AppCompatSpinner;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget v7, Landroidx/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 505
    new-instance v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, -0x2

    const/4 v5, -0x2

    const v6, 0x800013

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(III)V

    move-object v1, v2

    .line 507
    .local v1, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    .end local v1    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 261
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/16 v3, 0x8

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 262
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 3

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 631
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNavigationIcon()V
    .locals 3

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 612
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 616
    :goto_1
    return-void

    .line 612
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 614
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateToolbarLogo()V
    .locals 4

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    const/4 v2, 0x0

    move-object v1, v2

    .line 323
    .local v1, "logo":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 324
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 325
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v1, v2

    .line 330
    :cond_0
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 331
    return-void

    .line 325
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 327
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 8

    .prologue
    .line 556
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move v2, p1

    .local v2, "visibility":I
    move-object v4, v1

    move v5, v2

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move-object v3, v4

    .line 558
    .local v3, "anim":Landroidx/core/view/ViewPropertyAnimatorCompat;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 559
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 561
    :cond_0
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    .line 233
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 2

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->dismissPopupMenus()V

    .line 376
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0
.end method

.method public getDropdownItemCount()I
    .locals 2

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 2

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return-object v0
.end method

.method public getNavigationMode()I
    .locals 2

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return-object v0
.end method

.method public getVisibility()I
    .locals 2

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getVisibility()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 2

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasExpandedActionView()Z
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->hasExpandedActionView()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0
.end method

.method public hasIcon()Z
    .locals 2

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 2

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 3

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    const-string/jumbo v1, "ToolbarWidgetWrapper"

    const-string/jumbo v2, "Progress display unsupported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 287
    return-void
.end method

.method public initProgress()V
    .locals 3

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    const-string/jumbo v1, "ToolbarWidgetWrapper"

    const-string/jumbo v2, "Progress display unsupported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 282
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0
.end method

.method public isTitleTruncated()Z
    .locals 2

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->isTitleTruncated()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 647
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 642
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 652
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 4

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move v1, p1

    .local v1, "collapsible":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    .line 449
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/16 v3, 0x10

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    .line 541
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 543
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 544
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/16 v3, 0x10

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 545
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 547
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move v1, p1

    .local v1, "defaultNavigationContentDescription":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne v2, v3, :cond_0

    .line 197
    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 200
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    .line 203
    :cond_1
    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "defaultNavigationIcon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 605
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 606
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 608
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 6

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move v1, p1

    .local v1, "newOpts":I
    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    move v2, v4

    .line 386
    .local v2, "oldOpts":I
    move v4, v2

    move v5, v1

    xor-int/2addr v4, v5

    move v3, v4

    .line 387
    .local v3, "changed":I
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 388
    move v4, v3

    if-eqz v4, :cond_4

    .line 389
    move v4, v3

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 390
    move v4, v1

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 391
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 393
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 396
    :cond_1
    move v4, v3

    const/4 v5, 0x3

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_2

    .line 397
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 400
    :cond_2
    move v4, v3

    const/16 v5, 0x8

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 401
    move v4, v1

    const/16 v5, 0x8

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5

    .line 402
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 403
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 410
    :cond_3
    :goto_0
    move v4, v3

    const/16 v5, 0x10

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 411
    move v4, v1

    const/16 v5, 0x10

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    .line 412
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 418
    :cond_4
    :goto_1
    return-void

    .line 405
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 414
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 5

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "adapter":Landroid/widget/SpinnerAdapter;
    move-object v2, p2

    .local v2, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 515
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 516
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 517
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 6

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_0

    .line 522
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 525
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 526
    return-void
.end method

.method public setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 6

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "tabView":Landroidx/appcompat/widget/ScrollingTabContainerView;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-ne v3, v4, :cond_0

    .line 423
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 425
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 426
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 427
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 428
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v2, v3

    .line 429
    .local v2, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v3, v2

    const/4 v4, -0x2

    iput v4, v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;->width:I

    .line 430
    move-object v3, v2

    const/4 v4, -0x2

    iput v4, v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;->height:I

    .line 431
    move-object v3, v2

    const v4, 0x800053

    iput v4, v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 432
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 434
    .end local v2    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 454
    return-void
.end method

.method public setIcon(I)V
    .locals 5

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 302
    return-void

    .line 301
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 307
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 308
    return-void
.end method

.method public setLogo(I)V
    .locals 5

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 313
    return-void

    .line 312
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 318
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 319
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 8

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "menu":Landroid/view/Menu;
    move-object v2, p2

    .local v2, "cb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-nez v3, :cond_0

    .line 366
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 367
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    sget v4, Landroidx/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionMenuPresenter;->setId(I)V

    .line 369
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 370
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/Toolbar;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 371
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 6

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "actionMenuPresenterCallback":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v2, p2

    .local v2, "menuBuilderCallback":Landroidx/appcompat/view/menu/MenuBuilder$Callback;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/Toolbar;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 673
    return-void
.end method

.method public setMenuPrepared()V
    .locals 3

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 361
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 5

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 627
    return-void

    .line 626
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "description":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 621
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 622
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 5

    .prologue
    .line 599
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 600
    return-void

    .line 599
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 594
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 595
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 9

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move v1, p1

    .local v1, "mode":I
    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    move v2, v4

    .line 464
    .local v2, "oldMode":I
    move v4, v1

    move v5, v2

    if-eq v4, v5, :cond_1

    .line 465
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 478
    :cond_0
    :goto_0
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 480
    move v4, v1

    packed-switch v4, :pswitch_data_1

    .line 497
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid navigation mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 467
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-ne v4, v5, :cond_0

    .line 468
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 472
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-ne v4, v5, :cond_0

    .line 473
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 482
    .line 500
    :cond_1
    :goto_1
    :pswitch_2
    return-void

    .line 484
    :pswitch_3
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 485
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 486
    goto :goto_1

    .line 488
    :pswitch_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 489
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 490
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v3, v4

    .line 491
    .local v3, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move-object v4, v3

    const/4 v5, -0x2

    iput v5, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->width:I

    .line 492
    move-object v4, v3

    const/4 v5, -0x2

    iput v5, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->height:I

    .line 493
    move-object v4, v3

    const v5, 0x800053

    iput v5, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 494
    goto :goto_1

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 480
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "subtitle":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 274
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/16 v3, 0x8

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 275
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 277
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 256
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move v1, p1

    .local v1, "visible":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 662
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "cb":Landroid/view/Window$Callback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    .line 238
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v2, :cond_0

    .line 244
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 10

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move v1, p1

    .local v1, "visibility":I
    move-wide v2, p2

    .local v2, "duration":J
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move v5, v1

    if-nez v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 567
    :goto_0
    invoke-virtual {v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move-wide v5, v2

    .line 568
    invoke-virtual {v4, v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    new-instance v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move v8, v1

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;-><init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;I)V

    .line 569
    invoke-virtual {v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return-object v0

    .line 566
    .restart local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ToolbarWidgetWrapper;
    return v0
.end method
