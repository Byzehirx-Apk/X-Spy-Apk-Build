.class public Lgnu/kawa/slib/srfi2;
.super Lgnu/expr/ModuleBody;
.source "srfi2.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/srfi2;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxPattern;

.field static final Lit10:Lkawa/lang/SyntaxTemplate;

.field static final Lit11:Lkawa/lang/SyntaxPattern;

.field static final Lit12:Lkawa/lang/SyntaxTemplate;

.field static final Lit13:Lkawa/lang/SyntaxPattern;

.field static final Lit14:Lkawa/lang/SyntaxTemplate;

.field static final Lit15:Lkawa/lang/SyntaxPattern;

.field static final Lit16:Lkawa/lang/SyntaxTemplate;

.field static final Lit17:Lkawa/lang/SyntaxTemplate;

.field static final Lit18:Lkawa/lang/SyntaxTemplate;

.field static final Lit19:Lkawa/lang/SyntaxPattern;

.field static final Lit2:Lkawa/lang/SyntaxTemplate;

.field static final Lit20:Lkawa/lang/SyntaxTemplate;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxPattern;

.field static final Lit4:Lkawa/lang/SyntaxTemplate;

.field static final Lit5:Lkawa/lang/SyntaxPattern;

.field static final Lit6:Lkawa/lang/SyntaxTemplate;

.field static final Lit7:Lkawa/lang/SyntaxPattern;

.field static final Lit8:Lkawa/lang/SyntaxTemplate;

.field static final Lit9:Lkawa/lang/SyntaxTemplate;

.field public static final and$Mnlet$St:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "let"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "and"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u0001"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit20:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u000c\u0007\u000c\u0008\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit19:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u0001\u0001\u0000"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit18:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u0001\u0001\u0000"

    const-string/jumbo v4, "\u0011\u0018\u0004\t\u000b\u0008\t\u0003\u0008\u0012"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/srfi2;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit17:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u0001\u0001\u0000"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit16:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u000c\u0007\u001c\u000c\u000f\u0013\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit15:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u0001\u0001\u0000"

    const-string/jumbo v4, "\u0011\u0018\u0004\t\u000b\u0008\t\u0003\u0008\u0012"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/srfi2;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit14:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u000c\u0007,\u001c\u000c\u000f\u0008\u0013\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit13:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u0001\u0001\u0001\u0000"

    const-string/jumbo v4, "\u0011\u0018\u0004)\u0008\t\u000b\u0008\u0013\u0008\u0011\u0018\u000c\t\u000b\u0008\t\u0003\u0008\u001a"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/srfi2;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x1

    sget-object v8, Lgnu/kawa/slib/srfi2;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit12:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u000c\u0007<,\u000c\u000f\u000c\u0017\u0008\u001b\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit11:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u0001\u0001"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit10:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u0001\u0001"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit9:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u0001\u0001"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit8:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u000c\u0007\u001c\u000c\u000f\u0008\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit7:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u0001\u0001"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit6:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u000c\u0007,\u001c\u000c\u000f\u0008\u0008\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit5:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u0001\u0001\u0001"

    const-string/jumbo v4, "\u0011\u0018\u0004)\u0008\t\u000b\u0008\u0013\u0008\u000b"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/srfi2;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit4:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u000c\u0007<,\u000c\u000f\u000c\u0017\u0008\u0008\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit3:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u0001\u0003\u0001\u0000"

    const-string/jumbo v4, "\t\u0003\u0008\u0011\r\u000b\u0008\u0008\u0011\u0018\u0004\t\u0013\u001a"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "begin"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit2:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "\u000c\u0007,\r\u000f\u0008\u0008\u0008\u000c\u0017\u001b"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit1:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    const-string/jumbo v3, "and-let*"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/kawa/slib/srfi2;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    invoke-direct {v2}, Lgnu/kawa/slib/srfi2;-><init>()V

    sput-object v1, Lgnu/kawa/slib/srfi2;->$instance:Lgnu/kawa/slib/srfi2;

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    sget-object v4, Lgnu/kawa/slib/srfi2;->$instance:Lgnu/kawa/slib/srfi2;

    move-object v0, v4

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v3, Lgnu/kawa/slib/srfi2;->$instance:Lgnu/kawa/slib/srfi2;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/srfi2;->and$Mnlet$St:Lkawa/lang/Macro;

    sget-object v1, Lgnu/kawa/slib/srfi2;->$instance:Lgnu/kawa/slib/srfi2;

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

.method static lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 2
    move-object v0, p0

    .local v0, "form":Ljava/lang/Object;
    move-object v4, v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    move-object v1, v4

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit1:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit2:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    .line 23
    :goto_0
    move-object v0, v4

    .end local v0    # "form":Ljava/lang/Object;
    return-object v0

    .line 4
    .restart local v0    # "form":Ljava/lang/Object;
    :cond_0
    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit3:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit4:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_1
    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit5:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit6:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_2
    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit7:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 10
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit8:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkawa/lib/std_syntax;->isIdentifier(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit9:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    .line 12
    :goto_1
    goto :goto_0

    :cond_3
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit10:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "expected a variable name"

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    instance-of v6, v6, [Ljava/lang/Object;

    if-eqz v6, :cond_4

    check-cast v5, [Ljava/lang/Object;

    :goto_2
    invoke-static {v4, v5}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v9, v5

    move-object v10, v6

    move-object v5, v10

    move-object v6, v9

    move-object v7, v10

    move-object v9, v6

    move-object v10, v7

    move-object v6, v10

    move-object v7, v9

    const/4 v8, 0x0

    move-object v9, v7

    move v10, v8

    move v7, v10

    move-object v8, v9

    aput-object v8, v6, v7

    goto :goto_2

    :cond_5
    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit11:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 14
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit12:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_6
    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit13:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 17
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit14:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit15:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 19
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit16:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkawa/lib/std_syntax;->isIdentifier(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 20
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit17:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    .line 21
    :goto_3
    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit18:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "expected a variable name"

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    instance-of v6, v6, [Ljava/lang/Object;

    if-eqz v6, :cond_9

    check-cast v5, [Ljava/lang/Object;

    :goto_4
    invoke-static {v4, v5}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_3

    :cond_9
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v9, v5

    move-object v10, v6

    move-object v5, v10

    move-object v6, v9

    move-object v7, v10

    move-object v9, v6

    move-object v10, v7

    move-object v6, v10

    move-object v7, v9

    const/4 v8, 0x0

    move-object v9, v7

    move v10, v8

    move v7, v10

    move-object v8, v9

    aput-object v8, v6, v7

    goto :goto_4

    :cond_a
    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit19:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 23
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/srfi2;->Lit20:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v4, "syntax-case"

    move-object v5, v0

    invoke-static {v4, v5}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/srfi2;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

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

    :goto_0
    return v0

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi2;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
