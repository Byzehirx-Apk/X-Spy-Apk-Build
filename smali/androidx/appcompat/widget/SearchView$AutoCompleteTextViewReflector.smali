.class Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoCompleteTextViewReflector"
.end annotation


# instance fields
.field private doAfterTextChanged:Ljava/lang/reflect/Method;

.field private doBeforeTextChanged:Ljava/lang/reflect/Method;

.field private ensureImeVisible:Ljava/lang/reflect/Method;

.field private showSoftInputUnchecked:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 10

    .prologue
    .line 2025
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2027
    move-object v2, v0

    :try_start_0
    const-class v3, Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v4, "doBeforeTextChanged"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 2028
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    .line 2029
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2032
    .line 2034
    :goto_0
    move-object v2, v0

    :try_start_1
    const-class v3, Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v4, "doAfterTextChanged"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 2035
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    .line 2036
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2039
    .line 2041
    :goto_1
    move-object v2, v0

    :try_start_2
    const-class v3, Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v4, "ensureImeVisible"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 2042
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    .line 2043
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2046
    .line 2047
    :goto_2
    return-void

    .line 2030
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0

    .line 2037
    :catch_1
    move-exception v2

    move-object v1, v2

    goto :goto_1

    .line 2044
    :catch_2
    move-exception v2

    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .locals 6

    .prologue
    .line 2059
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;
    move-object v1, p1

    .local v1, "view":Landroid/widget/AutoCompleteTextView;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 2061
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2063
    .line 2065
    :cond_0
    :goto_0
    return-void

    .line 2062
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .locals 6

    .prologue
    .line 2050
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;
    move-object v1, p1

    .local v1, "view":Landroid/widget/AutoCompleteTextView;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 2052
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2054
    .line 2056
    :cond_0
    :goto_0
    return-void

    .line 2053
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V
    .locals 11

    .prologue
    .line 2068
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;
    move-object v1, p1

    .local v1, "view":Landroid/widget/AutoCompleteTextView;
    move v2, p2

    .local v2, "visible":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 2070
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    move-object v5, v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2072
    .line 2074
    :cond_0
    :goto_0
    return-void

    .line 2071
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method
