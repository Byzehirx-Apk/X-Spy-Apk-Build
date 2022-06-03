.class public Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
.super Landroidx/appcompat/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/WindowDecorActionBar;)V
    .locals 4

    .prologue
    .line 1162
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/WindowDecorActionBar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/app/ActionBar$Tab;-><init>()V

    .line 1168
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Landroidx/appcompat/app/ActionBar$TabListener;
    .locals 2

    .prologue
    .line 1183
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1280
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1194
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1214
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 1219
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1173
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1228
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public select()V
    .locals 3

    .prologue
    .line 1261
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 1262
    return-void
.end method

.method public setContentDescription(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 5

    .prologue
    .line 1266
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1271
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, p1

    .local v1, "contentDesc":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1272
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v2, :cond_0

    .line 1273
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1275
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public setCustomView(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 6

    .prologue
    .line 1208
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move v1, p1

    .local v1, "layoutResId":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v3}, Landroidx/appcompat/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move v4, v1

    const/4 v5, 0x0

    .line 1209
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1208
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setCustomView(Landroid/view/View;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1199
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    .line 1200
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v2, :cond_0

    .line 1201
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1203
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public setIcon(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 5

    .prologue
    .line 1242
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1233
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1234
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v2, :cond_0

    .line 1235
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1237
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public setPosition(I)V
    .locals 4

    .prologue
    .line 1223
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    .line 1224
    return-void
.end method

.method public setTabListener(Landroidx/appcompat/app/ActionBar$TabListener;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1188
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, p1

    .local v1, "callback":Landroidx/appcompat/app/ActionBar$TabListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    .line 1189
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1178
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    .line 1179
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public setText(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 5

    .prologue
    .line 1256
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v3, v3, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1247
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1248
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v2, :cond_0

    .line 1249
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1251
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
    return-object v0
.end method
