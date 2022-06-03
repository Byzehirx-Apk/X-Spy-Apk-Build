.class public Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mHasPendingShowSoftInputRequest:Z

.field final mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

.field private mSearchView:Landroidx/appcompat/widget/SearchView;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 1837
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1838
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 1841
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1842
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 1845
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyle":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1829
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$1;-><init>(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;)V

    iput-object v5, v4, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 1846
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v5

    iput v5, v4, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1847
    return-void
.end method

.method private getSearchViewTextMinWidthDp()I
    .locals 6

    .prologue
    .line 1959
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object v1, v4

    .line 1960
    .local v1, "config":Landroid/content/res/Configuration;
    move-object v4, v1

    iget v4, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    move v2, v4

    .line 1961
    .local v2, "widthDp":I
    move-object v4, v1

    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    move v3, v4

    .line 1963
    .local v3, "heightDp":I
    move v4, v2

    const/16 v5, 0x3c0

    if-lt v4, v5, :cond_0

    move v4, v3

    const/16 v5, 0x2d0

    if-lt v4, v5, :cond_0

    move-object v4, v1

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1965
    const/16 v4, 0x100

    move v0, v4

    .line 1969
    .end local v0    # "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    :goto_0
    return v0

    .line 1966
    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    :cond_0
    move v4, v2

    const/16 v5, 0x258

    if-ge v4, v5, :cond_1

    move v4, v2

    const/16 v5, 0x280

    if-lt v4, v5, :cond_2

    move v4, v3

    const/16 v5, 0x1e0

    if-lt v4, v5, :cond_2

    .line 1967
    :cond_1
    const/16 v4, 0xc0

    move v0, v4

    goto :goto_0

    .line 1969
    :cond_2
    const/16 v4, 0xa0

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 2

    .prologue
    .line 1926
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mThreshold:I

    if-lez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->enoughToFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isEmpty()Z
    .locals 2

    .prologue
    .line 1871
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    .prologue
    .line 1978
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move-object v1, p1

    .local v1, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    move-object v2, v3

    .line 1979
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    if-eqz v3, :cond_0

    .line 1980
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    .line 1981
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 1983
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 1851
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move-object v2, v0

    invoke-super {v2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onFinishInflate()V

    .line 1852
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    move-object v1, v2

    .line 1853
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v0

    .line 1854
    invoke-direct {v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I

    move-result v4

    int-to-float v4, v4

    move-object v5, v1

    .line 1853
    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setMinWidth(I)V

    .line 1855
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 1916
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move v1, p1

    .local v1, "focused":Z
    move v2, p2

    .local v2, "direction":I
    move-object v3, p3

    .local v3, "previouslyFocusedRect":Landroid/graphics/Rect;
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1917
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView;->onTextFocusChanged()V

    .line 1918
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 1931
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 1934
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 1935
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    move-object v3, v4

    .line 1936
    .local v3, "state":Landroid/view/KeyEvent$DispatcherState;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1937
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1939
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .line 1952
    .end local v0    # "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    .end local v3    # "state":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    return v0

    .line 1940
    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1941
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    move-object v3, v4

    .line 1942
    .restart local v3    # "state":Landroid/view/KeyEvent$DispatcherState;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 1943
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1945
    :cond_2
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1946
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1947
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1948
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1952
    .end local v3    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .prologue
    .line 1898
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move v1, p1

    .local v1, "hasWindowFocus":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1900
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1905
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 1908
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1909
    sget-object v2, Landroidx/appcompat/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1912
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .prologue
    .line 1890
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1880
    return-void
.end method

.method setImeVisibility(Z)V
    .locals 6

    .prologue
    .line 1996
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move v1, p1

    .local v1, "visible":Z
    move-object v3, v0

    .line 1997
    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    move-object v2, v3

    .line 1998
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    move v3, v1

    if-nez v3, :cond_0

    .line 1999
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 2000
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    .line 2001
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v3

    .line 2002
    .line 2017
    :goto_0
    return-void

    .line 2005
    :cond_0
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2008
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 2009
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    .line 2010
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v3

    .line 2011
    goto :goto_0

    .line 2016
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 2017
    goto :goto_0
.end method

.method setSearchView(Landroidx/appcompat/widget/SearchView;)V
    .locals 4

    .prologue
    .line 1858
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move-object v1, p1

    .local v1, "searchView":Landroidx/appcompat/widget/SearchView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 1859
    return-void
.end method

.method public setThreshold(I)V
    .locals 4

    .prologue
    .line 1863
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move v1, p1

    .local v1, "threshold":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setThreshold(I)V

    .line 1864
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1865
    return-void
.end method

.method showSoftInputIfNecessary()V
    .locals 5

    .prologue
    .line 1987
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    if-eqz v2, :cond_0

    .line 1988
    move-object v2, v0

    .line 1989
    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object v1, v2

    .line 1990
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object v2, v1

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    .line 1991
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 1993
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
