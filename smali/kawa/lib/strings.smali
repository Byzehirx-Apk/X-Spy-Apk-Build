.class public Lkawa/lib/strings;
.super Lgnu/expr/ModuleBody;
.source "strings.scm"


# static fields
.field public static final $instance:Lkawa/lib/strings;

.field public static final $make$string$:Lgnu/expr/ModuleMethod;

.field static final Lit0:Lgnu/text/Char;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final list$Mn$Grstring:Lgnu/expr/ModuleMethod;

.field public static final make$Mnstring:Lgnu/expr/ModuleMethod;

.field public static final string$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Gr$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Ls$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mn$Grlist:Lgnu/expr/ModuleMethod;

.field public static final string$Mnappend:Lgnu/expr/ModuleMethod;

.field public static final string$Mnappend$Slshared:Lgnu/expr/ModuleMethod;

.field public static final string$Mncapitalize:Lgnu/expr/ModuleMethod;

.field public static final string$Mncapitalize$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mncopy:Lgnu/expr/ModuleMethod;

.field public static final string$Mndowncase$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mnfill$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mnlength:Lgnu/expr/ModuleMethod;

.field public static final string$Mnref:Lgnu/expr/ModuleMethod;

.field public static final string$Mnset$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mnupcase$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Qu:Lgnu/expr/ModuleMethod;

.field public static final substring:Lgnu/expr/ModuleMethod;


# direct methods
.method public static varargs $make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    move-object v4, v0

    array-length v4, v4

    move v1, v4

    .line 14
    .local v1, "n":I
    new-instance v4, Lgnu/lists/FString;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v1

    invoke-direct {v5, v6}, Lgnu/lists/FString;-><init>(I)V

    move-object v2, v4

    .line 15
    .local v2, "str":Lgnu/lists/FString;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 17
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    move v7, v3

    aget-object v6, v6, v7

    check-cast v6, Lgnu/text/Char;

    invoke-virtual {v6}, Lgnu/text/Char;->charValue()C

    move-result v6

    invoke-virtual {v4, v5, v6}, Lgnu/lists/FString;->setCharAt(IC)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 8

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string-append/shared"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string-append"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string-capitalize"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string-capitalize!"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string-downcase!"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string-upcase!"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string-fill!"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string-copy"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "list->string"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string->list"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "substring"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string>=?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string<=?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string>?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string<?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string=?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string-set!"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string-ref"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string-length"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "$make$string$"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "make-string"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "string?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v1, 0x20

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lkawa/lib/strings;->Lit0:Lgnu/text/Char;

    new-instance v1, Lkawa/lib/strings;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Lkawa/lib/strings;-><init>()V

    sput-object v1, Lkawa/lib/strings;->$instance:Lkawa/lib/strings;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    sget-object v3, Lkawa/lib/strings;->$instance:Lkawa/lib/strings;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lkawa/lib/strings;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x2

    sget-object v5, Lkawa/lib/strings;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->make$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x4

    sget-object v5, Lkawa/lib/strings;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->$make$string$:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x5

    sget-object v5, Lkawa/lib/strings;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Mnlength:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x6

    sget-object v5, Lkawa/lib/strings;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x7

    sget-object v5, Lkawa/lib/strings;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Mnset$Ex:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x8

    sget-object v5, Lkawa/lib/strings;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x9

    sget-object v5, Lkawa/lib/strings;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Ls$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xa

    sget-object v5, Lkawa/lib/strings;->Lit9:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Gr$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xb

    sget-object v5, Lkawa/lib/strings;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xc

    sget-object v5, Lkawa/lib/strings;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xd

    sget-object v5, Lkawa/lib/strings;->Lit12:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->substring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xe

    sget-object v5, Lkawa/lib/strings;->Lit13:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Mn$Grlist:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xf

    sget-object v5, Lkawa/lib/strings;->Lit14:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->list$Mn$Grstring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x10

    sget-object v5, Lkawa/lib/strings;->Lit15:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Mncopy:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x11

    sget-object v5, Lkawa/lib/strings;->Lit16:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Mnfill$Ex:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x12

    sget-object v5, Lkawa/lib/strings;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Mnupcase$Ex:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x13

    sget-object v5, Lkawa/lib/strings;->Lit18:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Mndowncase$Ex:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x14

    sget-object v5, Lkawa/lib/strings;->Lit19:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Mncapitalize$Ex:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x15

    sget-object v5, Lkawa/lib/strings;->Lit20:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Mncapitalize:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x16

    sget-object v5, Lkawa/lib/strings;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Mnappend:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x17

    sget-object v5, Lkawa/lib/strings;->Lit22:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Mnappend$Slshared:Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/strings;->$instance:Lkawa/lib/strings;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static isString(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/CharSequence;

    move v0, v1

    .end local v0    # "x":Ljava/lang/Object;
    return v0
.end method

.method public static isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "x":Ljava/lang/Object;
    return v0
.end method

.method public static isString$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "x":Ljava/lang/Object;
    return v0

    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isString$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "x":Ljava/lang/Object;
    return v0

    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isString$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "x":Ljava/lang/Object;
    return v0

    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isString$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "x":Ljava/lang/Object;
    return v0

    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static list$To$String(Lgnu/lists/LList;)Ljava/lang/CharSequence;
    .locals 14

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "list":Lgnu/lists/LList;
    move-object v6, v0

    invoke-static {v6}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v6

    move v1, v6

    .line 58
    .local v1, "len":I
    new-instance v6, Lgnu/lists/FString;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v1

    invoke-direct {v7, v8}, Lgnu/lists/FString;-><init>(I)V

    move-object v2, v6

    .line 59
    .local v2, "result":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v1

    if-ge v6, v7, :cond_0

    .line 61
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    :try_start_0
    check-cast v6, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 62
    .local v4, "pair":Lgnu/lists/Pair;
    move-object v6, v2

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    :try_start_1
    check-cast v6, Lgnu/lists/CharSeq;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move v7, v3

    move-object v8, v4

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v5, v9

    :try_start_2
    check-cast v8, Lgnu/text/Char;

    invoke-virtual {v8}, Lgnu/text/Char;->charValue()C
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    invoke-static {v6, v7, v8}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 63
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    :try_start_3
    check-cast v6, Lgnu/lists/LList;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v4    # "pair":Lgnu/lists/Pair;
    :cond_0
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "list":Lgnu/lists/LList;
    return-object v0

    .line 61
    .restart local v0    # "list":Lgnu/lists/LList;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "pair"

    const/4 v10, -0x2

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 62
    .restart local v4    # "pair":Lgnu/lists/Pair;
    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "string-set!"

    const/4 v10, 0x0

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_2
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "string-set!"

    const/4 v10, 0x2

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 63
    :catch_3
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "list"

    const/4 v10, -0x2

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public static makeString(I)Ljava/lang/CharSequence;
    .locals 3

    move v0, p0

    move v1, v0

    sget-object v2, Lkawa/lib/strings;->Lit0:Lgnu/text/Char;

    invoke-static {v1, v2}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;
    .locals 11

    .prologue
    .line 9
    move v0, p0

    .local v0, "n":I
    move-object v1, p1

    .local v1, "ch":Ljava/lang/Object;
    new-instance v3, Lgnu/lists/FString;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move v5, v0

    move-object v6, v1

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v2, v7

    :try_start_0
    check-cast v6, Lgnu/text/Char;

    invoke-virtual {v6}, Lgnu/text/Char;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    invoke-direct {v4, v5, v6}, Lgnu/lists/FString;-><init>(IC)V

    move-object v0, v3

    .end local v0    # "n":I
    return-object v0

    .restart local v0    # "n":I
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "gnu.lists.FString.<init>(int,char)"

    const/4 v7, 0x2

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public static string$To$List(Ljava/lang/CharSequence;)Lgnu/lists/LList;
    .locals 8

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "str":Ljava/lang/CharSequence;
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 50
    move-object v4, v0

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    move v2, v4

    move-object v1, v3

    .line 51
    .local v1, "result":Lgnu/lists/LList;
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    move v3, v2

    if-gez v3, :cond_0

    .line 52
    move-object v3, v1

    .line 54
    move-object v0, v3

    .end local v0    # "str":Ljava/lang/CharSequence;
    return-object v0

    .restart local v0    # "str":Ljava/lang/CharSequence;
    :cond_0
    new-instance v3, Lgnu/lists/Pair;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v2

    invoke-static {v5, v6}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v5

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move v4, v2

    move v2, v4

    move-object v1, v3

    goto :goto_0
.end method

.method public static varargs stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    new-instance v2, Lgnu/lists/FString;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lgnu/lists/FString;-><init>()V

    move-object v1, v2

    .line 90
    .local v1, "str":Lgnu/lists/FString;
    move-object v2, v1

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/lists/FString;->addAllStrings([Ljava/lang/Object;I)V

    .line 91
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs stringAppend$SlShared([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 12

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    move-object v4, v0

    array-length v4, v4

    if-nez v4, :cond_0

    .line 95
    new-instance v4, Lgnu/lists/FString;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lgnu/lists/FString;-><init>()V

    .line 101
    :goto_0
    move-object v0, v4

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0

    .line 96
    .restart local v0    # "args":[Ljava/lang/Object;
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v1, v4

    .line 97
    .local v1, "arg1":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/lists/FString;

    if-eqz v4, :cond_1

    move-object v4, v1

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v3, v5

    :try_start_0
    check-cast v4, Lgnu/lists/FString;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_1
    move-object v2, v4

    .line 100
    .local v2, "fstr":Lgnu/lists/FString;
    move-object v4, v2

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/lists/FString;->addAllStrings([Ljava/lang/Object;I)V

    .line 101
    move-object v4, v2

    goto :goto_0

    .line 99
    .end local v2    # "fstr":Lgnu/lists/FString;
    :cond_1
    move-object v4, v1

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v3, v5

    :try_start_1
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v4}, Lkawa/lib/strings;->stringCopy(Ljava/lang/CharSequence;)Lgnu/lists/FString;

    move-result-object v4

    goto :goto_1

    .line 98
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "fstr"

    const/4 v8, -0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 99
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "string-copy"

    const/4 v8, 0x0

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public static stringCapitalize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "str":Ljava/lang/CharSequence;
    move-object v2, v0

    invoke-static {v2}, Lkawa/lib/strings;->stringCopy(Ljava/lang/CharSequence;)Lgnu/lists/FString;

    move-result-object v2

    move-object v1, v2

    .line 85
    .local v1, "copy":Lgnu/lists/FString;
    move-object v2, v1

    invoke-static {v2}, Lgnu/lists/Strings;->makeCapitalize(Lgnu/lists/CharSeq;)V

    .line 86
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "str":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static stringCapitalize$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "str":Lgnu/lists/CharSeq;
    move-object v1, v0

    invoke-static {v1}, Lgnu/lists/Strings;->makeCapitalize(Lgnu/lists/CharSeq;)V

    .line 81
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "str":Lgnu/lists/CharSeq;
    return-object v0
.end method

.method public static stringCopy(Ljava/lang/CharSequence;)Lgnu/lists/FString;
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "str":Ljava/lang/CharSequence;
    new-instance v1, Lgnu/lists/FString;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .end local v0    # "str":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static stringDowncase$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "str":Lgnu/lists/CharSeq;
    move-object v1, v0

    invoke-static {v1}, Lgnu/lists/Strings;->makeLowerCase(Lgnu/lists/CharSeq;)V

    .line 77
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "str":Lgnu/lists/CharSeq;
    return-object v0
.end method

.method public static stringFill$Ex(Lgnu/lists/CharSeq;C)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "str":Lgnu/lists/CharSeq;
    move v1, p1

    .local v1, "ch":C
    move-object v2, v0

    move v3, v1

    invoke-interface {v2, v3}, Lgnu/lists/CharSeq;->fill(C)V

    return-void
.end method

.method public static stringLength(Ljava/lang/CharSequence;)I
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "str":Ljava/lang/CharSequence;
    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v0, v1

    .end local v0    # "str":Ljava/lang/CharSequence;
    return v0
.end method

.method public static stringRef(Ljava/lang/CharSequence;I)C
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "string":Ljava/lang/CharSequence;
    move v1, p1

    .local v1, "k":I
    move-object v2, v0

    move v3, v1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v0, v2

    .end local v0    # "string":Ljava/lang/CharSequence;
    return v0
.end method

.method public static stringSet$Ex(Lgnu/lists/CharSeq;IC)V
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "string":Lgnu/lists/CharSeq;
    move v1, p1

    .local v1, "k":I
    move v2, p2

    .local v2, "char":C
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    return-void
.end method

.method public static stringUpcase$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "str":Lgnu/lists/CharSeq;
    move-object v1, v0

    invoke-static {v1}, Lgnu/lists/Strings;->makeUpperCase(Lgnu/lists/CharSeq;)V

    .line 73
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "str":Lgnu/lists/CharSeq;
    return-object v0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "str":Ljava/lang/CharSequence;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    new-instance v3, Lgnu/lists/FString;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v1

    sub-int/2addr v7, v8

    invoke-direct {v4, v5, v6, v7}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;II)V

    move-object v0, v3

    .end local v0    # "str":Ljava/lang/CharSequence;
    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    .line 83
    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 6
    :pswitch_1
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 9
    :pswitch_2
    move-object v3, v2

    :try_start_0
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    invoke-static {v3}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 19
    :pswitch_3
    move-object v3, v2

    :try_start_1
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 48
    :pswitch_4
    move-object v3, v2

    :try_start_2
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v3}, Lkawa/lib/strings;->string$To$List(Ljava/lang/CharSequence;)Lgnu/lists/LList;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 56
    :pswitch_5
    move-object v3, v2

    :try_start_3
    check-cast v3, Lgnu/lists/LList;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v3}, Lkawa/lib/strings;->list$To$String(Lgnu/lists/LList;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 65
    :pswitch_6
    move-object v3, v2

    :try_start_4
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {v3}, Lkawa/lib/strings;->stringCopy(Ljava/lang/CharSequence;)Lgnu/lists/FString;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 71
    :pswitch_7
    move-object v3, v2

    :try_start_5
    check-cast v3, Lgnu/lists/CharSeq;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {v3}, Lkawa/lib/strings;->stringUpcase$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 75
    :pswitch_8
    move-object v3, v2

    :try_start_6
    check-cast v3, Lgnu/lists/CharSeq;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {v3}, Lkawa/lib/strings;->stringDowncase$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 79
    :pswitch_9
    move-object v3, v2

    :try_start_7
    check-cast v3, Lgnu/lists/CharSeq;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {v3}, Lkawa/lib/strings;->stringCapitalize$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 83
    :pswitch_a
    move-object v3, v2

    :try_start_8
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    invoke-static {v3}, Lkawa/lib/strings;->stringCapitalize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 9
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "make-string"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 19
    :catch_1
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "string-length"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 48
    :catch_2
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "string->list"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 56
    :catch_3
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "list->string"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 65
    :catch_4
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "string-copy"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 71
    :catch_5
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "string-upcase!"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 75
    :catch_6
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "string-downcase!"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 79
    :catch_7
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "string-capitalize!"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 83
    :catch_8
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "string-capitalize"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 68
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 9
    :pswitch_1
    move-object v4, v2

    :try_start_0
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move-object v5, v3

    invoke-static {v4, v5}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 22
    :pswitch_2
    move-object v4, v2

    :try_start_1
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v3

    :try_start_2
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    invoke-static {v4, v5}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 29
    :pswitch_3
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 32
    :pswitch_4
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lkawa/lib/strings;->isString$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    move-object v0, v4

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 35
    :pswitch_5
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lkawa/lib/strings;->isString$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    move-object v0, v4

    goto :goto_0

    :cond_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .line 38
    :pswitch_6
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lkawa/lib/strings;->isString$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    move-object v0, v4

    goto :goto_0

    :cond_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    .line 41
    :pswitch_7
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lkawa/lib/strings;->isString$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    move-object v0, v4

    goto :goto_0

    :cond_4
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    .line 68
    :pswitch_8
    move-object v4, v2

    :try_start_3
    check-cast v4, Lgnu/lists/CharSeq;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v3

    :try_start_4
    check-cast v5, Lgnu/text/Char;

    invoke-virtual {v5}, Lgnu/text/Char;->charValue()C
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    invoke-static {v4, v5}, Lkawa/lib/strings;->stringFill$Ex(Lgnu/lists/CharSeq;C)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    goto :goto_0

    .line 9
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "make-string"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 22
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "string-ref"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "string-ref"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 68
    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "string-fill!"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_4
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "string-fill!"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v5, :sswitch_data_0

    .line 44
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    :goto_0
    return-object v0

    .line 25
    :sswitch_0
    move-object v5, v2

    :try_start_0
    check-cast v5, Lgnu/lists/CharSeq;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v3

    :try_start_1
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    move-object v7, v4

    :try_start_2
    check-cast v7, Lgnu/text/Char;

    invoke-virtual {v7}, Lgnu/text/Char;->charValue()C
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    invoke-static {v5, v6, v7}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v5

    goto :goto_0

    .line 44
    :sswitch_1
    move-object v5, v2

    :try_start_3
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v3

    :try_start_4
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v6

    move-object v7, v4

    :try_start_5
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v7

    invoke-static {v5, v6, v7}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 25
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "string-set!"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "string-set!"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "string-set!"

    const/4 v9, 0x3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 44
    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "substring"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_4
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "substring"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_5
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "substring"

    const/4 v9, 0x3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v3, :sswitch_data_0

    .line 93
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 12
    :sswitch_0
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/strings;->$make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 88
    :sswitch_1
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 93
    :sswitch_2
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/strings;->stringAppend$SlShared([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
    .end sparse-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 6
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 83
    :goto_0
    return v0

    :pswitch_1
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_0

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_0
    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    .line 79
    :pswitch_2
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Lgnu/lists/CharSeq;

    if-nez v6, :cond_1

    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    :cond_1
    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 75
    :pswitch_3
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Lgnu/lists/CharSeq;

    if-nez v6, :cond_2

    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    :cond_2
    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 71
    :pswitch_4
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Lgnu/lists/CharSeq;

    if-nez v6, :cond_3

    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    :cond_3
    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 65
    :pswitch_5
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_4

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    :cond_4
    const v6, -0xbffff

    move v0, v6

    goto/16 :goto_0

    .line 56
    :pswitch_6
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Lgnu/lists/LList;

    if-eqz v6, :cond_5

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    :cond_5
    const v6, -0xbffff

    move v0, v6

    goto/16 :goto_0

    .line 48
    :pswitch_7
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_6

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    :cond_6
    const v6, -0xbffff

    move v0, v6

    goto/16 :goto_0

    .line 19
    :pswitch_8
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_7

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    :cond_7
    const v6, -0xbffff

    move v0, v6

    goto/16 :goto_0

    .line 9
    :pswitch_9
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    .line 6
    :pswitch_a
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v5, :pswitch_data_0

    .line 9
    :pswitch_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .line 68
    :goto_0
    return v0

    :pswitch_1
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/lists/CharSeq;

    if-nez v7, :cond_0

    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_0
    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/text/Char;

    if-eqz v7, :cond_1

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_1
    const v7, -0xbfffe

    move v0, v7

    goto :goto_0

    .line 41
    :pswitch_2
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 38
    :pswitch_3
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 35
    :pswitch_4
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 32
    :pswitch_5
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 29
    :pswitch_6
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 22
    :pswitch_7
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    :cond_2
    const v7, -0xbffff

    move v0, v7

    goto/16 :goto_0

    .line 9
    :pswitch_8
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v6, :sswitch_data_0

    .line 25
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    .line 44
    :goto_0
    return v0

    :sswitch_0
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_0

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_0
    const v8, -0xbffff

    move v0, v8

    goto :goto_0

    .line 25
    :sswitch_1
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/lists/CharSeq;

    if-nez v8, :cond_1

    const v8, -0xbffff

    move v0, v8

    goto :goto_0

    :cond_1
    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/text/Char;

    if-eqz v8, :cond_2

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_2
    const v8, -0xbfffd

    move v0, v8

    goto :goto_0

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v4, :sswitch_data_0

    .line 12
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 93
    :goto_0
    return v0

    :sswitch_0
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 88
    :sswitch_1
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 12
    :sswitch_2
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lkawa/lib/strings;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 6
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
