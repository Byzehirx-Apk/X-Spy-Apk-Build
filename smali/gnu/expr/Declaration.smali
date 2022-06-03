.class public Lgnu/expr/Declaration;
.super Ljava/lang/Object;
.source "Declaration.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# static fields
.field static final CAN_CALL:I = 0x4

.field static final CAN_READ:I = 0x2

.field static final CAN_WRITE:I = 0x8

.field public static final CLASS_ACCESS_FLAGS:J = 0x603000000L

.field public static final EARLY_INIT:I = 0x20000000

.field public static final ENUM_ACCESS:J = 0x200000000L

.field public static final EXPORT_SPECIFIED:I = 0x400

.field public static final EXTERNAL_ACCESS:I = 0x80000

.field public static final FIELD_ACCESS_FLAGS:J = 0x78f000000L

.field public static final FIELD_OR_METHOD:I = 0x100000

.field public static final FINAL_ACCESS:J = 0x400000000L

.field static final INDIRECT_BINDING:I = 0x1

.field public static final IS_ALIAS:I = 0x100

.field public static final IS_CONSTANT:I = 0x4000

.field public static final IS_DYNAMIC:I = 0x10000000

.field static final IS_FLUID:I = 0x10

.field public static final IS_IMPORTED:I = 0x20000

.field public static final IS_NAMESPACE_PREFIX:I = 0x200000

.field static final IS_SIMPLE:I = 0x40

.field public static final IS_SINGLE_VALUE:I = 0x40000

.field public static final IS_SYNTAX:I = 0x8000

.field public static final IS_UNKNOWN:I = 0x10000

.field public static final METHOD_ACCESS_FLAGS:J = 0x40f000000L

.field public static final MODULE_REFERENCE:I = 0x40000000

.field public static final NONSTATIC_SPECIFIED:I = 0x1000

.field public static final NOT_DEFINING:I = 0x200

.field public static final PACKAGE_ACCESS:I = 0x8000000

.field static final PRIVATE:I = 0x20

.field public static final PRIVATE_ACCESS:I = 0x1000000

.field public static final PRIVATE_PREFIX:Ljava/lang/String; = "$Prvt$"

.field public static final PRIVATE_SPECIFIED:I = 0x1000000

.field static final PROCEDURE:I = 0x80

.field public static final PROTECTED_ACCESS:I = 0x2000000

.field public static final PUBLIC_ACCESS:I = 0x4000000

.field public static final STATIC_SPECIFIED:I = 0x800

.field public static final TRANSIENT_ACCESS:J = 0x100000000L

.field public static final TYPE_SPECIFIED:I = 0x2000

.field static final UNKNOWN_PREFIX:Ljava/lang/String; = "loc$"

.field public static final VOLATILE_ACCESS:J = 0x80000000L

.field static counter:I


# instance fields
.field public base:Lgnu/expr/Declaration;

.field public context:Lgnu/expr/ScopeExp;

.field evalIndex:I

.field public field:Lgnu/bytecode/Field;

.field filename:Ljava/lang/String;

.field public firstCall:Lgnu/expr/ApplyExp;

.field protected flags:J

.field protected id:I

.field makeLocationMethod:Lgnu/bytecode/Method;

.field next:Lgnu/expr/Declaration;

.field nextCapturedVar:Lgnu/expr/Declaration;

.field position:I

.field symbol:Ljava/lang/Object;

.field protected type:Lgnu/bytecode/Type;

.field protected typeExp:Lgnu/expr/Expression;

.field protected value:Lgnu/expr/Expression;

.field var:Lgnu/bytecode/Variable;


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v1, v0

    sget v2, Lgnu/expr/Declaration;->counter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move v2, v4

    move v3, v4

    sput v3, Lgnu/expr/Declaration;->counter:I

    iput v2, v1, Lgnu/expr/Declaration;->id:I

    .line 356
    move-object v1, v0

    sget-object v2, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v2, v1, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 528
    move-object v1, v0

    const-wide/16 v2, 0x40

    iput-wide v2, v1, Lgnu/expr/Declaration;->flags:J

    .line 764
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 738
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Variable;)V
    .locals 5

    .prologue
    .line 742
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "var":Lgnu/bytecode/Variable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 743
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 744
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 747
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, p1

    .local v2, "name":Ljava/lang/Object;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v3, v1

    sget v4, Lgnu/expr/Declaration;->counter:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    move v4, v6

    move v5, v6

    sput v5, Lgnu/expr/Declaration;->counter:I

    iput v4, v3, Lgnu/expr/Declaration;->id:I

    .line 356
    move-object v3, v1

    sget-object v4, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v4, v3, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 528
    move-object v3, v1

    const-wide/16 v4, 0x40

    iput-wide v4, v3, Lgnu/expr/Declaration;->flags:J

    .line 764
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 748
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->setName(Ljava/lang/Object;)V

    .line 749
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V
    .locals 6

    .prologue
    .line 759
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "field":Lgnu/bytecode/Field;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 760
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 761
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 762
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 7

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v3, v0

    sget v4, Lgnu/expr/Declaration;->counter:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    move v4, v6

    move v5, v6

    sput v5, Lgnu/expr/Declaration;->counter:I

    iput v4, v3, Lgnu/expr/Declaration;->id:I

    .line 356
    move-object v3, v0

    sget-object v4, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v4, v3, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 528
    move-object v3, v0

    const-wide/16 v4, 0x40

    iput-wide v4, v3, Lgnu/expr/Declaration;->flags:J

    .line 764
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 753
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->setName(Ljava/lang/Object;)V

    .line 754
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 755
    return-void
.end method

.method public static followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;
    .locals 5

    .prologue
    .line 943
    move-object v0, p0

    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 945
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v4

    move-object v1, v4

    .line 946
    .local v1, "declValue":Lgnu/expr/Expression;
    move-object v4, v1

    instance-of v4, v4, Lgnu/expr/ReferenceExp;

    if-nez v4, :cond_1

    .line 947
    .line 954
    .end local v1    # "declValue":Lgnu/expr/Expression;
    :cond_0
    :goto_1
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "decl":Lgnu/expr/Declaration;
    return-object v0

    .line 948
    .restart local v0    # "decl":Lgnu/expr/Declaration;
    .restart local v1    # "declValue":Lgnu/expr/Expression;
    :cond_1
    move-object v4, v1

    check-cast v4, Lgnu/expr/ReferenceExp;

    move-object v2, v4

    .line 949
    .local v2, "rexp":Lgnu/expr/ReferenceExp;
    move-object v4, v2

    iget-object v4, v4, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object v3, v4

    .line 950
    .local v3, "orig":Lgnu/expr/Declaration;
    move-object v4, v3

    if-nez v4, :cond_2

    .line 951
    goto :goto_1

    .line 952
    :cond_2
    move-object v4, v3

    move-object v0, v4

    .line 953
    goto :goto_0
.end method

.method public static getDeclaration(Lgnu/mapping/Named;)Lgnu/expr/Declaration;
    .locals 3

    .prologue
    .line 1097
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Named;
    move-object v1, v0

    move-object v2, v0

    invoke-interface {v2}, Lgnu/mapping/Named;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/expr/Declaration;->getDeclaration(Ljava/lang/Object;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "proc":Lgnu/mapping/Named;
    return-object v0
.end method

.method public static getDeclaration(Ljava/lang/Object;Ljava/lang/String;)Lgnu/expr/Declaration;
    .locals 12

    .prologue
    .line 1102
    move-object v1, p0

    .local v1, "proc":Ljava/lang/Object;
    move-object v2, p1

    .local v2, "name":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v3, v7

    .line 1103
    .local v3, "procField":Lgnu/bytecode/Field;
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 1130
    move-object v7, v1

    invoke-static {v7}, Lgnu/expr/PrimProcedure;->getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    .line 1131
    .local v4, "procClass":Ljava/lang/Class;
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 1133
    move-object v7, v4

    invoke-static {v7}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/ClassType;

    move-object v5, v7

    .line 1134
    .local v5, "procType":Lgnu/bytecode/ClassType;
    move-object v7, v2

    invoke-static {v7}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1135
    .local v6, "fname":Ljava/lang/String;
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v7

    move-object v3, v7

    .line 1139
    .end local v4    # "procClass":Ljava/lang/Class;
    .end local v5    # "procType":Lgnu/bytecode/ClassType;
    .end local v6    # "fname":Ljava/lang/String;
    :cond_0
    move-object v7, v3

    if-eqz v7, :cond_2

    .line 1141
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v7

    move v4, v7

    .line 1142
    .local v4, "fflags":I
    move v7, v4

    const/16 v8, 0x8

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_2

    .line 1144
    new-instance v7, Lgnu/expr/Declaration;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    move-object v5, v7

    .line 1145
    .local v5, "decl":Lgnu/expr/Declaration;
    move-object v7, v5

    new-instance v8, Lgnu/expr/QuoteExp;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1146
    move v7, v4

    const/16 v8, 0x10

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_1

    .line 1147
    move-object v7, v5

    const-wide/16 v8, 0x4000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1148
    :cond_1
    move-object v7, v5

    move-object v1, v7

    .line 1151
    .end local v1    # "proc":Ljava/lang/Object;
    .end local v4    # "fflags":I
    .end local v5    # "decl":Lgnu/expr/Declaration;
    :goto_0
    return-object v1

    .restart local v1    # "proc":Ljava/lang/Object;
    :cond_2
    const/4 v7, 0x0

    move-object v1, v7

    goto :goto_0
.end method

.method public static getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;
    .locals 10

    .prologue
    .line 1061
    move-object v0, p0

    .local v0, "cname":Ljava/lang/String;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    move-object v5, v0

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v2, v5

    .line 1062
    .local v2, "clas":Lgnu/bytecode/ClassType;
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v5

    move-object v3, v5

    .line 1063
    .local v3, "fld":Lgnu/bytecode/Field;
    new-instance v5, Lgnu/expr/Declaration;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    move-object v4, v5

    .line 1064
    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v5, v4

    const-wide/16 v6, 0x4800

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1065
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "cname":Ljava/lang/String;
    return-object v0
.end method

.method public static getDeclarationValueFromStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;
    .locals 13

    .prologue
    .line 1077
    move-object v0, p0

    .local v0, "className":Ljava/lang/String;
    move-object v1, p1

    .local v1, "fieldName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v7, v0

    :try_start_0
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v3, v7

    .line 1078
    .local v3, "cls":Ljava/lang/Class;
    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    move-object v4, v7

    .line 1079
    .local v4, "fld":Ljava/lang/reflect/Field;
    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 1081
    .local v5, "value":Ljava/lang/Object;
    new-instance v7, Lgnu/expr/Declaration;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    move-object v10, v0

    invoke-static {v10}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    move-object v6, v7

    .line 1085
    .local v6, "decl":Lgnu/expr/Declaration;
    move-object v7, v6

    new-instance v8, Lgnu/expr/QuoteExp;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    invoke-direct {v9, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1086
    move-object v7, v6

    const-wide/16 v8, 0x4800

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "className":Ljava/lang/String;
    return-object v0

    .line 1089
    .end local v3    # "cls":Ljava/lang/Class;
    .end local v4    # "fld":Ljava/lang/reflect/Field;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "decl":Lgnu/expr/Declaration;
    .restart local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 1091
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v7, Lgnu/mapping/WrappedException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v3

    invoke-direct {v8, v9}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static final isUnknown(Lgnu/expr/Declaration;)Z
    .locals 4

    .prologue
    .line 711
    move-object v0, p0

    .local v0, "decl":Lgnu/expr/Declaration;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    const-wide/32 v2, 0x10000

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "decl":Lgnu/expr/Declaration;
    return v0

    .restart local v0    # "decl":Lgnu/expr/Declaration;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;
    .locals 9

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-nez v4, :cond_2

    .line 790
    :cond_0
    const/4 v4, 0x0

    move-object v2, v4

    .line 791
    .local v2, "vname":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 792
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 793
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v4

    instance-of v4, v4, Lgnu/expr/ReferenceExp;

    if-eqz v4, :cond_4

    .line 795
    move-object v4, v0

    invoke-static {v4}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 796
    .local v3, "base":Lgnu/expr/Declaration;
    move-object v4, v0

    move-object v5, v3

    if-nez v5, :cond_3

    const/4 v5, 0x0

    :goto_0
    iput-object v5, v4, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 797
    .line 805
    .end local v2    # "vname":Ljava/lang/String;
    .end local v3    # "base":Lgnu/expr/Declaration;
    :cond_2
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0

    .line 796
    .restart local v0    # "this":Lgnu/expr/Declaration;
    .restart local v2    # "vname":Ljava/lang/String;
    .restart local v3    # "base":Lgnu/expr/Declaration;
    :cond_3
    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 800
    .end local v3    # "base":Lgnu/expr/Declaration;
    :cond_4
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    :goto_2
    move-object v3, v4

    .line 802
    .local v3, "type":Lgnu/bytecode/Type;
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {v5}, Lgnu/expr/ScopeExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v5

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    goto :goto_1

    .line 800
    .end local v3    # "type":Lgnu/bytecode/Type;
    :cond_5
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    goto :goto_2
.end method

.method public compileStore(Lgnu/expr/Compilation;)V
    .locals 6

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    move-object v2, v3

    .line 339
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 352
    :goto_0
    return-void

    .line 343
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v3

    if-nez v3, :cond_1

    .line 345
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 346
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 347
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_0

    .line 350
    :cond_1
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

.method public getAccessFlags(S)S
    .locals 6

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move v1, p1

    .local v1, "defaultFlags":S
    move-object v3, v0

    const-wide/32 v4, 0xf000000

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 561
    const/4 v3, 0x0

    move v2, v3

    .line 562
    .local v2, "flags":S
    move-object v3, v0

    const-wide/32 v4, 0x1000000

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    move v3, v2

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    move v2, v3

    .line 564
    :cond_0
    move-object v3, v0

    const-wide/32 v4, 0x2000000

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    move v3, v2

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    int-to-short v3, v3

    move v2, v3

    .line 566
    :cond_1
    move-object v3, v0

    const-wide/32 v4, 0x4000000

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 567
    move v3, v2

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    move v2, v3

    .line 571
    :cond_2
    :goto_0
    move-object v3, v0

    const-wide v4, 0x80000000L

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 572
    move v3, v2

    const/16 v4, 0x40

    or-int/lit8 v3, v3, 0x40

    int-to-short v3, v3

    move v2, v3

    .line 573
    :cond_3
    move-object v3, v0

    const-wide v4, 0x100000000L

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 574
    move v3, v2

    const/16 v4, 0x80

    or-int/lit16 v3, v3, 0x80

    int-to-short v3, v3

    move v2, v3

    .line 575
    :cond_4
    move-object v3, v0

    const-wide v4, 0x200000000L

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 576
    move v3, v2

    const/16 v4, 0x4000

    or-int/lit16 v3, v3, 0x4000

    int-to-short v3, v3

    move v2, v3

    .line 577
    :cond_5
    move-object v3, v0

    const-wide v4, 0x400000000L

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 578
    move v3, v2

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    int-to-short v3, v3

    move v2, v3

    .line 579
    :cond_6
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lgnu/expr/Declaration;
    return v0

    .line 570
    .end local v2    # "flags":S
    .restart local v0    # "this":Lgnu/expr/Declaration;
    :cond_7
    move v3, v1

    move v2, v3

    .restart local v2    # "flags":S
    goto :goto_0
.end method

.method public final getCanCall()Z
    .locals 6

    .prologue
    .line 632
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getCanRead()Z
    .locals 6

    .prologue
    .line 620
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getCanWrite()Z
    .locals 6

    .prologue
    .line 642
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCode()I
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/Declaration;->id:I

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return v0
.end method

.method public final getColumnNumber()I
    .locals 4

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v2, v0

    iget v2, v2, Lgnu/expr/Declaration;->position:I

    const/16 v3, 0xfff

    and-int/lit16 v2, v2, 0xfff

    move v1, v2

    .line 862
    .local v1, "column":I
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/expr/Declaration;
    return v0

    .restart local v0    # "this":Lgnu/expr/Declaration;
    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method public final getConstantValue()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    move-object v1, v2

    .line 411
    .local v1, "v":Lgnu/expr/Expression;
    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_0

    move-object v2, v1

    sget-object v3, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v2, v3, :cond_1

    .line 412
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 413
    .end local v0    # "this":Lgnu/expr/Declaration;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/Declaration;
    :cond_1
    move-object v2, v1

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public final getContext()Lgnu/expr/ScopeExp;
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 838
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0
.end method

.method public final getFlag(J)Z
    .locals 9

    .prologue
    .line 532
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-wide v2, p1

    .local v2, "flag":J
    move-object v4, v1

    iget-wide v4, v4, Lgnu/expr/Declaration;->flags:J

    move-wide v6, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final getLineNumber()I
    .locals 4

    .prologue
    .line 855
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v2, v0

    iget v2, v2, Lgnu/expr/Declaration;->position:I

    const/16 v3, 0xc

    shr-int/lit8 v2, v2, 0xc

    move v1, v2

    .line 856
    .local v1, "line":I
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/expr/Declaration;
    return v0

    .restart local v0    # "this":Lgnu/expr/Declaration;
    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/Declaration;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    check-cast v1, Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0
.end method

.method public final getSymbol()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 848
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-nez v1, :cond_0

    .line 74
    move-object v1, v0

    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 75
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0
.end method

.method public final getTypeExp()Lgnu/expr/Expression;
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-nez v1, :cond_0

    .line 68
    move-object v1, v0

    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 69
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0
.end method

.method public final getValue()Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v4, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v3, v4, :cond_1

    .line 373
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v3

    const/16 v4, 0x18

    and-int/lit8 v3, v3, 0x18

    const/16 v4, 0x18

    if-ne v3, v4, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v3

    if-nez v3, :cond_0

    .line 380
    move-object v3, v0

    :try_start_0
    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .line 400
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0

    .line 382
    .restart local v0    # "this":Lgnu/expr/Declaration;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 384
    goto :goto_0

    .line 387
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v3, v3, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_0

    move-object v3, v0

    const-wide/16 v4, 0x2000

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-eq v3, v4, :cond_0

    .line 392
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 393
    .local v1, "val":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v2, v3

    .line 394
    .local v2, "t":Lgnu/bytecode/Type;
    move-object v3, v0

    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    iput-object v4, v3, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 398
    goto :goto_0

    .line 396
    .end local v1    # "val":Ljava/lang/Object;
    .end local v2    # "t":Lgnu/bytecode/Type;
    :catch_1
    move-exception v3

    move-object v1, v3

    goto :goto_0
.end method

.method public getVariable()Lgnu/bytecode/Variable;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0
.end method

.method public final hasConstantValue()Z
    .locals 4

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    move-object v1, v2

    .line 419
    .local v1, "v":Lgnu/expr/Expression;
    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_0

    move-object v2, v1

    sget-object v3, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/expr/Declaration;
    return v0

    .restart local v0    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public ignorable()Z
    .locals 6

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 668
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 677
    .end local v0    # "this":Lgnu/expr/Declaration;
    .local v1, "value":Lgnu/expr/Expression;
    :goto_0
    return v0

    .line 669
    .end local v1    # "value":Lgnu/expr/Expression;
    .restart local v0    # "this":Lgnu/expr/Declaration;
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    const-wide/32 v4, 0x10000

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 670
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 671
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v3

    if-nez v3, :cond_3

    .line 672
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 673
    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v3

    move-object v1, v3

    .line 674
    .restart local v1    # "value":Lgnu/expr/Expression;
    move-object v3, v1

    if-eqz v3, :cond_4

    move-object v3, v1

    instance-of v3, v3, Lgnu/expr/LambdaExp;

    if-nez v3, :cond_5

    .line 675
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 676
    :cond_5
    move-object v3, v1

    check-cast v3, Lgnu/expr/LambdaExp;

    move-object v2, v3

    .line 677
    .local v2, "lexp":Lgnu/expr/LambdaExp;
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final isAlias()Z
    .locals 6

    .prologue
    .line 582
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v4, 0x100

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCompiletimeConstant()Z
    .locals 4

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    const-wide/16 v2, 0x4000

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/Declaration;->hasConstantValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return v0

    .restart local v0    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isFluid()Z
    .locals 6

    .prologue
    .line 587
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v4, 0x10

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isIndirectBinding()Z
    .locals 6

    .prologue
    .line 603
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isLexical()Z
    .locals 6

    .prologue
    .line 706
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v4, 0x10010010

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isNamespaceDecl()Z
    .locals 6

    .prologue
    .line 597
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v4, 0x200000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isPrivate()Z
    .locals 6

    .prologue
    .line 549
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isProcedureDecl()Z
    .locals 6

    .prologue
    .line 591
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isPublic()Z
    .locals 6

    .prologue
    .line 547
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    iget-object v2, v2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v2, v2, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isSimple()Z
    .locals 6

    .prologue
    .line 124
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v4, 0x40

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isStableSourceLocation()Z
    .locals 2

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return v0
.end method

.method public isStatic()Z
    .locals 6

    .prologue
    .line 692
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v3, :cond_0

    .line 693
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v3

    move v1, v3

    .line 700
    .end local v1    # "this":Lgnu/expr/Declaration;
    .local v2, "lambda":Lgnu/expr/LambdaExp;
    :goto_0
    return v1

    .line 694
    .end local v2    # "lambda":Lgnu/expr/LambdaExp;
    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_0
    move-object v3, v1

    const-wide/16 v4, 0x800

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/Declaration;->isCompiletimeConstant()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 696
    :cond_1
    const/4 v3, 0x1

    move v1, v3

    goto :goto_0

    .line 697
    :cond_2
    move-object v3, v1

    const-wide/16 v4, 0x1000

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 698
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 699
    :cond_3
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    move-object v2, v3

    .line 700
    .restart local v2    # "lambda":Lgnu/expr/LambdaExp;
    move-object v3, v2

    instance-of v3, v3, Lgnu/expr/ModuleExp;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lgnu/expr/ModuleExp;

    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final isThisParameter()Z
    .locals 3

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    sget-object v2, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return v0

    .restart local v0    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 27

    .prologue
    .line 164
    move-object/from16 v3, p0

    .local v3, "this":Lgnu/expr/Declaration;
    move-object/from16 v4, p1

    .local v4, "access":Lgnu/expr/AccessExp;
    move/from16 v5, p2

    .local v5, "flags":I
    move-object/from16 v6, p3

    .local v6, "comp":Lgnu/expr/Compilation;
    move-object/from16 v7, p4

    .local v7, "target":Lgnu/expr/Target;
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/IgnoreTarget;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 165
    .line 332
    :goto_0
    return-void

    .line 166
    :cond_0
    move-object/from16 v21, v4

    if-nez v21, :cond_3

    const/16 v21, 0x0

    :goto_1
    move-object/from16 v8, v21

    .line 167
    .local v8, "owner":Lgnu/expr/Declaration;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 169
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v21, v0

    check-cast v21, Lgnu/expr/ReferenceExp;

    move-object/from16 v9, v21

    .line 170
    .local v9, "rexp":Lgnu/expr/ReferenceExp;
    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    move-object/from16 v10, v21

    .line 171
    .local v10, "orig":Lgnu/expr/Declaration;
    move-object/from16 v21, v10

    if-eqz v21, :cond_4

    move/from16 v21, v5

    const/16 v22, 0x2

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_1

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v21

    if-eqz v21, :cond_4

    :cond_1
    move-object/from16 v21, v8

    if-eqz v21, :cond_2

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v21

    if-nez v21, :cond_4

    .line 176
    :cond_2
    move-object/from16 v21, v10

    move-object/from16 v22, v9

    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    invoke-virtual/range {v21 .. v25}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 177
    goto :goto_0

    .line 166
    .end local v8    # "owner":Lgnu/expr/Declaration;
    .end local v9    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v10    # "orig":Lgnu/expr/Declaration;
    :cond_3
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/AccessExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v21

    goto :goto_1

    .line 180
    .restart local v8    # "owner":Lgnu/expr/Declaration;
    :cond_4
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 182
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/FluidLetExp;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 184
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    invoke-virtual/range {v21 .. v25}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 185
    goto/16 :goto_0

    .line 188
    :cond_5
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v21

    move-object/from16 v9, v21

    .line 189
    .local v9, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v21

    move-object/from16 v10, v21

    .line 190
    .local v10, "rtype":Lgnu/bytecode/Type;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v21

    if-nez v21, :cond_c

    move/from16 v21, v5

    const/16 v22, 0x2

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_c

    .line 193
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    .line 194
    new-instance v21, Ljava/lang/Error;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "internal error: cannot take location of "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v21

    .line 197
    :cond_6
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v21, v0

    move/from16 v13, v21

    .line 198
    .local v13, "immediate":Z
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 200
    const-string/jumbo v21, "gnu.kawa.reflect.StaticFieldLocation"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    move-object/from16 v12, v21

    .line 201
    .local v12, "ltype":Lgnu/bytecode/ClassType;
    move-object/from16 v21, v12

    const-string/jumbo v22, "make"

    move/from16 v23, v13

    if-eqz v23, :cond_8

    const/16 v23, 0x1

    :goto_2
    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v11, v21

    .line 210
    .local v11, "meth":Lgnu/bytecode/Method;
    :goto_3
    move/from16 v21, v13

    if-eqz v21, :cond_b

    .line 211
    move-object/from16 v21, v6

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 217
    :goto_4
    move-object/from16 v21, v9

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 218
    move-object/from16 v21, v12

    move-object/from16 v10, v21

    .line 331
    .end local v11    # "meth":Lgnu/bytecode/Method;
    .end local v12    # "ltype":Lgnu/bytecode/ClassType;
    .end local v13    # "immediate":Z
    :cond_7
    :goto_5
    move-object/from16 v21, v7

    move-object/from16 v22, v6

    move-object/from16 v23, v10

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 332
    goto/16 :goto_0

    .line 201
    .restart local v12    # "ltype":Lgnu/bytecode/ClassType;
    .restart local v13    # "immediate":Z
    :cond_8
    const/16 v23, 0x2

    goto :goto_2

    .line 205
    .end local v12    # "ltype":Lgnu/bytecode/ClassType;
    :cond_9
    const-string/jumbo v21, "gnu.kawa.reflect.FieldLocation"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    move-object/from16 v12, v21

    .line 206
    .restart local v12    # "ltype":Lgnu/bytecode/ClassType;
    move-object/from16 v21, v12

    const-string/jumbo v22, "make"

    move/from16 v23, v13

    if-eqz v23, :cond_a

    const/16 v23, 0x2

    :goto_6
    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v11, v21

    .line 208
    .restart local v11    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v21, v3

    move-object/from16 v22, v8

    move-object/from16 v23, v6

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    goto :goto_3

    .line 206
    .end local v11    # "meth":Lgnu/bytecode/Method;
    :cond_a
    const/16 v23, 0x3

    goto :goto_6

    .line 214
    .restart local v11    # "meth":Lgnu/bytecode/Method;
    :cond_b
    move-object/from16 v21, v6

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 215
    move-object/from16 v21, v6

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    goto :goto_4

    .line 223
    .end local v11    # "meth":Lgnu/bytecode/Method;
    .end local v12    # "ltype":Lgnu/bytecode/ClassType;
    .end local v13    # "immediate":Z
    :cond_c
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    .line 225
    move-object/from16 v21, v6

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 226
    move-object/from16 v21, v6

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 227
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v21

    if-nez v21, :cond_e

    .line 229
    move-object/from16 v21, v3

    move-object/from16 v22, v8

    move-object/from16 v23, v6

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 230
    move-object/from16 v21, v9

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 280
    :goto_7
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v21

    if-eqz v21, :cond_7

    move/from16 v21, v5

    const/16 v22, 0x2

    and-int/lit8 v21, v21, 0x2

    if-nez v21, :cond_7

    .line 286
    move-object/from16 v21, v4

    if-eqz v21, :cond_1a

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/AccessExp;->getFileName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v12, v22

    .local v12, "filename":Ljava/lang/String;
    if-eqz v21, :cond_1a

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/AccessExp;->getLineNumber()I

    move-result v21

    move/from16 v26, v21

    move/from16 v21, v26

    move/from16 v22, v26

    move/from16 v13, v22

    .local v13, "line":I
    if-lez v21, :cond_1a

    .line 292
    const-string/jumbo v21, "gnu.mapping.UnboundLocationException"

    invoke-static/range {v21 .. v21}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v21

    move-object/from16 v14, v21

    .line 295
    .local v14, "typeUnboundLocationException":Lgnu/bytecode/ClassType;
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/CodeAttr;->isInTry()Z

    move-result v21

    move/from16 v15, v21

    .line 296
    .local v15, "isInTry":Z
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/AccessExp;->getColumnNumber()I

    move-result v21

    move/from16 v16, v21

    .line 297
    .local v16, "column":I
    new-instance v21, Lgnu/bytecode/Label;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v23, v9

    invoke-direct/range {v22 .. v23}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v17, v21

    .line 298
    .local v17, "startTry":Lgnu/bytecode/Label;
    move-object/from16 v21, v17

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 299
    move-object/from16 v21, v9

    sget-object v22, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 300
    new-instance v21, Lgnu/bytecode/Label;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v23, v9

    invoke-direct/range {v22 .. v23}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v18, v21

    .line 301
    .local v18, "endTry":Lgnu/bytecode/Label;
    move-object/from16 v21, v18

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 302
    new-instance v21, Lgnu/bytecode/Label;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v23, v9

    invoke-direct/range {v22 .. v23}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v19, v21

    .line 303
    .local v19, "endLabel":Lgnu/bytecode/Label;
    move-object/from16 v21, v19

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 304
    move/from16 v21, v15

    if-eqz v21, :cond_18

    .line 305
    move-object/from16 v21, v9

    move-object/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 308
    :goto_8
    const/16 v21, 0x0

    move/from16 v20, v21

    .line 309
    .local v20, "fragment_cookie":I
    move/from16 v21, v15

    if-nez v21, :cond_d

    .line 310
    move-object/from16 v21, v9

    move-object/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;)I

    move-result v21

    move/from16 v20, v21

    .line 311
    :cond_d
    move-object/from16 v21, v9

    move-object/from16 v22, v17

    move-object/from16 v23, v18

    move-object/from16 v24, v14

    invoke-virtual/range {v21 .. v24}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 313
    move-object/from16 v21, v9

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 314
    move-object/from16 v21, v9

    move-object/from16 v22, v12

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 315
    move-object/from16 v21, v9

    move/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 316
    move-object/from16 v21, v9

    move/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 317
    move-object/from16 v21, v9

    move-object/from16 v22, v14

    const-string/jumbo v23, "setLine"

    const/16 v24, 0x3

    invoke-virtual/range {v22 .. v24}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 319
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 320
    move/from16 v21, v15

    if-eqz v21, :cond_19

    .line 321
    move-object/from16 v21, v19

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 324
    .line 328
    .end local v12    # "filename":Ljava/lang/String;
    .end local v13    # "line":I
    .end local v14    # "typeUnboundLocationException":Lgnu/bytecode/ClassType;
    .end local v15    # "isInTry":Z
    .end local v16    # "column":I
    .end local v17    # "startTry":Lgnu/bytecode/Label;
    .end local v18    # "endTry":Lgnu/bytecode/Label;
    .end local v19    # "endLabel":Lgnu/bytecode/Label;
    .end local v20    # "fragment_cookie":I
    :goto_9
    sget-object v21, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object/from16 v10, v21

    goto/16 :goto_5

    .line 233
    :cond_e
    move-object/from16 v21, v9

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto/16 :goto_7

    .line 235
    :cond_f
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v21

    if-eqz v21, :cond_12

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v21

    if-nez v21, :cond_12

    .line 238
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v21

    move-object/from16 v12, v21

    .line 239
    .local v12, "env":Lgnu/mapping/Environment;
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v21, v0

    if-eqz v21, :cond_11

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lgnu/mapping/Symbol;

    :goto_a
    move-object/from16 v13, v21

    .line 241
    .local v13, "sym":Lgnu/mapping/Symbol;
    const/16 v21, 0x0

    move-object/from16 v14, v21

    .line 242
    .local v14, "property":Ljava/lang/Object;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v21

    if-eqz v21, :cond_10

    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 244
    sget-object v21, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object/from16 v14, v21

    .line 245
    .end local v14    # "property":Ljava/lang/Object;
    :cond_10
    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    invoke-virtual/range {v21 .. v23}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v21

    move-object/from16 v15, v21

    .line 246
    .local v15, "loc":Lgnu/mapping/Location;
    move-object/from16 v21, v6

    move-object/from16 v22, v15

    sget-object v23, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-static/range {v23 .. v23}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 247
    goto/16 :goto_7

    .line 239
    .end local v13    # "sym":Lgnu/mapping/Symbol;
    .end local v15    # "loc":Lgnu/mapping/Location;
    :cond_11
    move-object/from16 v21, v12

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v21

    goto :goto_a

    .line 248
    .end local v12    # "env":Lgnu/mapping/Environment;
    :cond_12
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v11, v22

    .local v11, "val":Ljava/lang/Object;
    if-eqz v21, :cond_13

    .line 250
    move-object/from16 v21, v6

    move-object/from16 v22, v11

    move-object/from16 v23, v7

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 251
    goto/16 :goto_0

    .line 253
    .end local v11    # "val":Ljava/lang/Object;
    :cond_13
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v21, v0

    sget-object v22, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_15

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v21

    if-eqz v21, :cond_15

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v21, v0

    check-cast v21, Lgnu/expr/LambdaExp;

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v21, v0

    if-nez v21, :cond_15

    .line 257
    :cond_14
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 258
    goto/16 :goto_0

    .line 262
    :cond_15
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v21

    move-object/from16 v12, v21

    .line 264
    .local v12, "var":Lgnu/bytecode/Variable;
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v21, v0

    if-eqz v21, :cond_16

    move-object/from16 v21, v12

    if-nez v21, :cond_16

    move-object/from16 v21, v3

    const-wide/16 v22, 0x80

    invoke-virtual/range {v21 .. v23}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v21

    if-nez v21, :cond_16

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v21, v0

    check-cast v21, Lgnu/expr/ClassExp;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v13, v22

    .local v13, "cl":Lgnu/expr/ClassExp;
    invoke-virtual/range {v21 .. v21}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v21

    if-eqz v21, :cond_16

    .line 268
    const-string/jumbo v21, "get"

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v14, v21

    .line 269
    .local v14, "getName":Ljava/lang/String;
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v21, v0

    move-object/from16 v22, v14

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    move-object/from16 v15, v21

    .line 270
    .local v15, "getter":Lgnu/bytecode/Method;
    move-object/from16 v21, v13

    move-object/from16 v22, v6

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/ClassExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 271
    move-object/from16 v21, v9

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 272
    goto/16 :goto_7

    .line 275
    .end local v13    # "cl":Lgnu/expr/ClassExp;
    .end local v14    # "getName":Ljava/lang/String;
    .end local v15    # "getter":Lgnu/bytecode/Method;
    :cond_16
    move-object/from16 v21, v12

    if-nez v21, :cond_17

    .line 276
    move-object/from16 v21, v3

    move-object/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v21

    move-object/from16 v12, v21

    .line 277
    :cond_17
    move-object/from16 v21, v9

    move-object/from16 v22, v12

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto/16 :goto_7

    .line 307
    .local v12, "filename":Ljava/lang/String;
    .local v13, "line":I
    .local v14, "typeUnboundLocationException":Lgnu/bytecode/ClassType;
    .local v15, "isInTry":Z
    .restart local v16    # "column":I
    .restart local v17    # "startTry":Lgnu/bytecode/Label;
    .restart local v18    # "endTry":Lgnu/bytecode/Label;
    .restart local v19    # "endLabel":Lgnu/bytecode/Label;
    :cond_18
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    goto/16 :goto_8

    .line 323
    .restart local v20    # "fragment_cookie":I
    :cond_19
    move-object/from16 v21, v9

    move/from16 v22, v20

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->endFragment(I)V

    goto/16 :goto_9

    .line 326
    .end local v12    # "filename":Ljava/lang/String;
    .end local v13    # "line":I
    .end local v14    # "typeUnboundLocationException":Lgnu/bytecode/ClassType;
    .end local v15    # "isInTry":Z
    .end local v16    # "column":I
    .end local v17    # "startTry":Lgnu/bytecode/Label;
    .end local v18    # "endTry":Lgnu/bytecode/Label;
    .end local v19    # "endLabel":Lgnu/bytecode/Label;
    .end local v20    # "fragment_cookie":I
    :cond_1a
    move-object/from16 v21, v9

    sget-object v22, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    invoke-virtual/range {v21 .. v22}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_9
.end method

.method loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 8

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "owner":Lgnu/expr/Declaration;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 154
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object v1, v3

    .line 155
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 156
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v2

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    goto :goto_0
.end method

.method public makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V
    .locals 21

    .prologue
    .line 965
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object/from16 v2, p1

    .local v2, "frameType":Lgnu/bytecode/ClassType;
    move-object/from16 v3, p2

    .local v3, "comp":Lgnu/expr/Compilation;
    move-object/from16 v4, p3

    .local v4, "value":Lgnu/expr/Expression;
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v15

    move v5, v15

    .line 966
    .local v5, "external_access":Z
    const/4 v15, 0x0

    move v6, v15

    .line 967
    .local v6, "fflags":I
    move-object v15, v1

    const-wide/16 v16, 0x4000

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v15

    move v7, v15

    .line 968
    .local v7, "isConstant":Z
    move-object v15, v1

    const-wide/16 v16, 0x2000

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v15

    move v8, v15

    .line 969
    .local v8, "typeSpecified":Z
    move-object v15, v3

    iget-boolean v15, v15, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v15, :cond_0

    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v15, v15, Lgnu/expr/ModuleExp;

    if-eqz v15, :cond_0

    move v15, v7

    if-nez v15, :cond_0

    move v15, v8

    if-nez v15, :cond_0

    .line 971
    move-object v15, v1

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 975
    :cond_0
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v15

    if-nez v15, :cond_1

    move v15, v5

    if-nez v15, :cond_1

    move-object v15, v3

    iget-boolean v15, v15, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v15, :cond_2

    .line 976
    :cond_1
    move v15, v6

    const/16 v16, 0x1

    or-int/lit8 v15, v15, 0x1

    move v6, v15

    .line 977
    :cond_2
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v15

    if-nez v15, :cond_4

    move-object v15, v1

    const-wide/32 v16, 0x10010010

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v15

    if-eqz v15, :cond_4

    :cond_3
    move-object v15, v4

    instance-of v15, v15, Lgnu/expr/ClassExp;

    if-eqz v15, :cond_5

    move-object v15, v4

    check-cast v15, Lgnu/expr/LambdaExp;

    invoke-virtual {v15}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v15

    if-nez v15, :cond_5

    .line 985
    :cond_4
    move v15, v6

    const/16 v16, 0x8

    or-int/lit8 v15, v15, 0x8

    move v6, v15

    .line 986
    :cond_5
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v15

    if-nez v15, :cond_6

    move v15, v7

    if-eqz v15, :cond_8

    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v15

    if-nez v15, :cond_6

    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v15, v15, Lgnu/expr/ModuleExp;

    if-eqz v15, :cond_8

    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v15, Lgnu/expr/ModuleExp;

    invoke-virtual {v15}, Lgnu/expr/ModuleExp;->staticInitRun()Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_6
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v15, v15, Lgnu/expr/ClassExp;

    if-nez v15, :cond_7

    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v15, v15, Lgnu/expr/ModuleExp;

    if-eqz v15, :cond_8

    .line 991
    :cond_7
    move v15, v6

    const/16 v16, 0x10

    or-int/lit8 v15, v15, 0x10

    move v6, v15

    .line 992
    :cond_8
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v15

    invoke-virtual {v15}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v15

    move-object v9, v15

    .line 993
    .local v9, "ftype":Lgnu/bytecode/Type;
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v15

    if-eqz v15, :cond_9

    move-object v15, v9

    sget-object v16, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 994
    sget-object v15, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    move-object v9, v15

    .line 995
    :cond_9
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v15

    if-nez v15, :cond_e

    .line 997
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    .line 999
    .local v10, "fname":Ljava/lang/String;
    move-object v15, v10

    if-nez v15, :cond_a

    .line 1001
    const-string/jumbo v15, "$unnamed$0"

    move-object v10, v15

    .line 1002
    move-object v15, v10

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    add-int/lit8 v15, v15, -0x2

    move v11, v15

    .line 1013
    .local v11, "nlength":I
    :goto_0
    const/4 v15, 0x0

    move v12, v15

    .line 1014
    .local v12, "counter":I
    :goto_1
    move-object v15, v2

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v15

    if-eqz v15, :cond_d

    .line 1015
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v10

    const/16 v17, 0x0

    move/from16 v18, v11

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x24

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    goto :goto_1

    .line 1006
    .end local v11    # "nlength":I
    .end local v12    # "counter":I
    :cond_a
    move-object v15, v10

    invoke-static {v15}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    .line 1007
    move-object v15, v1

    const-wide/32 v16, 0x10000

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1008
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "loc$"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    .line 1009
    :cond_b
    move v15, v5

    if-eqz v15, :cond_c

    move-object v15, v1

    const-wide/32 v16, 0x40000000

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v15

    if-nez v15, :cond_c

    .line 1010
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "$Prvt$"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    .line 1011
    :cond_c
    move-object v15, v10

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move v11, v15

    .restart local v11    # "nlength":I
    goto/16 :goto_0

    .line 1016
    .restart local v12    # "counter":I
    :cond_d
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    move/from16 v19, v6

    invoke-virtual/range {v16 .. v19}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 1017
    move-object v15, v4

    instance-of v15, v15, Lgnu/expr/QuoteExp;

    if-eqz v15, :cond_e

    .line 1019
    move-object v15, v4

    check-cast v15, Lgnu/expr/QuoteExp;

    invoke-virtual {v15}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v15

    move-object v13, v15

    .line 1020
    .local v13, "val":Ljava/lang/Object;
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v15}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v15

    if-eqz v15, :cond_11

    move-object v15, v13

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 1023
    move-object v15, v3

    iget-object v15, v15, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v15

    move-object v14, v15

    .line 1024
    .local v14, "literal":Lgnu/expr/Literal;
    move-object v15, v14

    iget-object v15, v15, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v15, :cond_e

    .line 1025
    move-object v15, v14

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Literal;->assign(Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    .line 1026
    .line 1038
    .end local v10    # "fname":Ljava/lang/String;
    .end local v11    # "nlength":I
    .end local v12    # "counter":I
    .end local v13    # "val":Ljava/lang/Object;
    .end local v14    # "literal":Lgnu/expr/Literal;
    :cond_e
    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v15

    if-nez v15, :cond_10

    move-object v15, v1

    invoke-virtual {v15}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v15

    if-nez v15, :cond_f

    move-object v15, v4

    if-eqz v15, :cond_10

    move-object v15, v4

    instance-of v15, v15, Lgnu/expr/ClassExp;

    if-nez v15, :cond_10

    .line 1042
    :cond_f
    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    invoke-static/range {v15 .. v17}, Lgnu/expr/BindingInitializer;->create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 1044
    :cond_10
    :goto_2
    return-void

    .line 1027
    .restart local v10    # "fname":Ljava/lang/String;
    .restart local v11    # "nlength":I
    .restart local v12    # "counter":I
    .restart local v13    # "val":Ljava/lang/Object;
    :cond_11
    move-object v15, v9

    instance-of v15, v15, Lgnu/bytecode/PrimType;

    if-nez v15, :cond_12

    const-string/jumbo v15, "java.lang.String"

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1030
    :cond_12
    move-object v15, v13

    instance-of v15, v15, Lgnu/text/Char;

    if-eqz v15, :cond_13

    .line 1031
    move-object v15, v13

    check-cast v15, Lgnu/text/Char;

    invoke-virtual {v15}, Lgnu/text/Char;->intValue()I

    move-result v15

    invoke-static {v15}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v15

    move-object v13, v15

    .line 1032
    .end local v13    # "val":Ljava/lang/Object;
    :cond_13
    move-object v15, v1

    iget-object v15, v15, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v16, v13

    move-object/from16 v17, v2

    invoke-virtual/range {v15 .. v17}, Lgnu/bytecode/Field;->setConstantValue(Ljava/lang/Object;Lgnu/bytecode/ClassType;)V

    .line 1033
    goto :goto_2
.end method

.method public makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V
    .locals 7

    .prologue
    .line 959
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "value":Lgnu/expr/Expression;
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 960
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/expr/Declaration;->makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    .line 961
    return-void
.end method

.method makeIndirectLocationFor()Lgnu/mapping/Location;
    .locals 4

    .prologue
    .line 1049
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    check-cast v2, Lgnu/mapping/Symbol;

    :goto_0
    move-object v1, v2

    .line 1051
    .local v1, "sym":Lgnu/mapping/Symbol;
    move-object v2, v1

    invoke-static {v2}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0

    .line 1049
    .end local v1    # "sym":Lgnu/mapping/Symbol;
    .restart local v0    # "this":Lgnu/expr/Declaration;
    :cond_0
    sget-object v2, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    goto :goto_0
.end method

.method public maybeIndirectBinding(Lgnu/expr/Compilation;)V
    .locals 4

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isLexical()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v2, v2, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    if-ne v2, v3, :cond_2

    .line 616
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 617
    :cond_2
    return-void
.end method

.method public final needsContext()Z
    .locals 2

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return v0

    .restart local v0    # "this":Lgnu/expr/Declaration;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final needsExternalAccess()Z
    .locals 6

    .prologue
    .line 485
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v4, 0x80020

    and-long/2addr v2, v4

    const-wide/32 v4, 0x80020

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v4, 0x200020

    and-long/2addr v2, v4

    const-wide/32 v4, 0x200020

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lgnu/expr/Declaration;
    return v1

    .restart local v1    # "this":Lgnu/expr/Declaration;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public needsInit()Z
    .locals 3

    .prologue
    .line 686
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v2, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return v0

    .restart local v0    # "this":Lgnu/expr/Declaration;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final nextDecl()Lgnu/expr/Declaration;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0
.end method

.method public noteValue(Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 722
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "value":Lgnu/expr/Expression;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v3, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v2, v3, :cond_2

    .line 724
    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_0

    .line 725
    move-object v2, v1

    check-cast v2, Lgnu/expr/LambdaExp;

    move-object v3, v0

    iput-object v3, v2, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 726
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 734
    :cond_1
    :goto_0
    return-void

    .line 728
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 730
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v2, v2, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_3

    .line 731
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v2, Lgnu/expr/LambdaExp;

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 732
    :cond_3
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    goto :goto_0
.end method

.method public printInfo(Lgnu/mapping/OutPort;)V
    .locals 6

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v3

    .line 870
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->printInfo(Ljava/lang/StringBuffer;)V

    .line 871
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method public printInfo(Ljava/lang/StringBuffer;)V
    .locals 8

    .prologue
    .line 876
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, p1

    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 888
    move-object v5, v2

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 889
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Lgnu/expr/Declaration;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 904
    move-object v5, v2

    const-string/jumbo v6, "/fl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 905
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Lgnu/expr/Declaration;->flags:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 906
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 907
    move-object v5, v2

    const-string/jumbo v6, "(ignorable)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 908
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    move-object v3, v5

    .line 909
    .local v3, "tx":Lgnu/expr/Expression;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    move-object v4, v5

    .line 910
    .local v4, "t":Lgnu/bytecode/Type;
    move-object v5, v3

    if-eqz v5, :cond_3

    move-object v5, v3

    instance-of v5, v5, Lgnu/expr/QuoteExp;

    if-nez v5, :cond_3

    .line 912
    move-object v5, v2

    const-string/jumbo v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 913
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 920
    :cond_1
    :goto_0
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v5, :cond_2

    .line 922
    move-object v5, v2

    const-string/jumbo v6, "(base:#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 923
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    iget v6, v6, Lgnu/expr/Declaration;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 924
    move-object v5, v2

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 926
    :cond_2
    return-void

    .line 915
    :cond_3
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-eqz v5, :cond_1

    move-object v5, v4

    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v5, v6, :cond_1

    .line 917
    move-object v5, v2

    const-string/jumbo v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 918
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_0
.end method

.method public pushIndirectBinding(Lgnu/expr/Compilation;)V
    .locals 10

    .prologue
    .line 771
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    move-object v2, v4

    .line 772
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 773
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    if-nez v4, :cond_0

    .line 775
    const/4 v4, 0x2

    new-array v4, v4, [Lgnu/bytecode/Type;

    move-object v3, v4

    .line 776
    .local v3, "args":[Lgnu/bytecode/Type;
    move-object v4, v3

    const/4 v5, 0x0

    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    .line 777
    move-object v4, v3

    const/4 v5, 0x1

    sget-object v6, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    aput-object v6, v4, v5

    .line 778
    move-object v4, v0

    sget-object v5, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string/jumbo v6, "make"

    move-object v7, v3

    sget-object v8, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const/16 v9, 0x9

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 783
    .end local v3    # "args":[Lgnu/bytecode/Type;
    :cond_0
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 784
    return-void
.end method

.method public final setAlias(Z)V
    .locals 6

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move v1, p1

    .local v1, "flag":Z
    move-object v2, v0

    move v3, v1

    const-wide/16 v4, 0x100

    invoke-virtual {v2, v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setCanCall()V
    .locals 6

    .prologue
    .line 636
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x4

    invoke-virtual {v2, v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 637
    move-object v2, v1

    iget-object v2, v2, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v2, :cond_0

    .line 638
    move-object v2, v1

    iget-object v2, v2, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->setCanRead()V

    .line 639
    :cond_0
    return-void
.end method

.method public final setCanCall(Z)V
    .locals 6

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move v1, p1

    .local v1, "called":Z
    move-object v2, v0

    move v3, v1

    const-wide/16 v4, 0x4

    invoke-virtual {v2, v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setCanRead()V
    .locals 6

    .prologue
    .line 627
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move-object v2, v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 628
    move-object v2, v1

    iget-object v2, v2, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v2, :cond_0

    .line 629
    move-object v2, v1

    iget-object v2, v2, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->setCanRead()V

    .line 630
    :cond_0
    return-void
.end method

.method public final setCanRead(Z)V
    .locals 6

    .prologue
    .line 623
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move v1, p1

    .local v1, "read":Z
    move-object v2, v0

    move v3, v1

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 624
    return-void
.end method

.method public final setCanWrite()V
    .locals 7

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    iget-wide v2, v2, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v4, 0x8

    or-long/2addr v2, v4

    iput-wide v2, v1, Lgnu/expr/Declaration;->flags:J

    .line 653
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v1, :cond_0

    .line 654
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->setCanRead()V

    .line 655
    :cond_0
    return-void
.end method

.method public final setCanWrite(Z)V
    .locals 9

    .prologue
    .line 646
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move v2, p1

    .local v2, "written":Z
    move v3, v2

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v6, 0x8

    or-long/2addr v4, v6

    iput-wide v4, v3, Lgnu/expr/Declaration;->flags:J

    .line 648
    :goto_0
    return-void

    .line 647
    :cond_0
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v6, -0x9

    and-long/2addr v4, v6

    iput-wide v4, v3, Lgnu/expr/Declaration;->flags:J

    goto :goto_0
.end method

.method public setCode(I)V
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move v1, p1

    .local v1, "code":I
    move v2, v1

    if-ltz v2, :cond_0

    new-instance v2, Ljava/lang/Error;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "code must be negative"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/expr/Declaration;->id:I

    .line 53
    return-void
.end method

.method public final setFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 819
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    .line 820
    return-void
.end method

.method public final setFlag(J)V
    .locals 9

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-wide v1, p1

    .local v1, "flag":J
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lgnu/expr/Declaration;->flags:J

    move-wide v6, v1

    or-long/2addr v4, v6

    iput-wide v4, v3, Lgnu/expr/Declaration;->flags:J

    .line 544
    return-void
.end method

.method public final setFlag(ZJ)V
    .locals 14

    .prologue
    .line 537
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Declaration;
    move v2, p1

    .local v2, "setting":Z
    move-wide/from16 v3, p2

    .local v3, "flag":J
    move v5, v2

    if-eqz v5, :cond_0

    move-object v5, v1

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget-wide v6, v6, Lgnu/expr/Declaration;->flags:J

    move-wide v8, v3

    or-long/2addr v6, v8

    iput-wide v6, v5, Lgnu/expr/Declaration;->flags:J

    .line 539
    :goto_0
    return-void

    .line 538
    :cond_0
    move-object v5, v1

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    iget-wide v6, v6, Lgnu/expr/Declaration;->flags:J

    move-wide v8, v3

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    and-long/2addr v6, v8

    iput-wide v6, v5, Lgnu/expr/Declaration;->flags:J

    goto :goto_0
.end method

.method public final setFluid(Z)V
    .locals 6

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move v1, p1

    .local v1, "fluid":Z
    move-object v2, v0

    move v3, v1

    const-wide/16 v4, 0x10

    invoke-virtual {v2, v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setIndirectBinding(Z)V
    .locals 6

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move v1, p1

    .local v1, "indirectBinding":Z
    move-object v2, v0

    move v3, v1

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 610
    return-void
.end method

.method public final setLine(I)V
    .locals 5

    .prologue
    .line 833
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move v1, p1

    .local v1, "lineno":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->setLine(II)V

    .line 834
    return-void
.end method

.method public final setLine(II)V
    .locals 6

    .prologue
    .line 824
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move v1, p1

    .local v1, "lineno":I
    move v2, p2

    .local v2, "colno":I
    move v3, v1

    if-gez v3, :cond_0

    .line 825
    const/4 v3, 0x0

    move v1, v3

    .line 826
    :cond_0
    move v3, v2

    if-gez v3, :cond_1

    .line 827
    const/4 v3, 0x0

    move v2, v3

    .line 828
    :cond_1
    move-object v3, v0

    move v4, v1

    const/16 v5, 0xc

    shl-int/lit8 v4, v4, 0xc

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Lgnu/expr/Declaration;->position:I

    .line 829
    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 5

    .prologue
    .line 813
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "location":Lgnu/text/SourceLocator;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    .line 814
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v3

    move-object v4, v1

    invoke-interface {v4}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->setLine(II)V

    .line 815
    return-void
.end method

.method public final setName(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public final setNext(Lgnu/expr/Declaration;)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "next":Lgnu/expr/Declaration;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    return-void
.end method

.method public final setPrivate(Z)V
    .locals 6

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move v1, p1

    .local v1, "isPrivate":Z
    move-object v2, v0

    move v3, v1

    const-wide/16 v4, 0x20

    invoke-virtual {v2, v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 554
    return-void
.end method

.method public final setProcedureDecl(Z)V
    .locals 6

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move v1, p1

    .local v1, "val":Z
    move-object v2, v0

    move v3, v1

    const-wide/16 v4, 0x80

    invoke-virtual {v2, v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setSimple(Z)V
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move v1, p1

    .local v1, "b":Z
    move-object v2, v0

    move v3, v1

    const-wide/16 v4, 0x40

    invoke-virtual {v2, v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 129
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v2}, Lgnu/bytecode/Variable;->isParameter()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Variable;->setSimple(Z)V

    .line 130
    :cond_0
    return-void
.end method

.method public final setSymbol(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    return-void
.end method

.method public final setSyntax()V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 135
    move-object v1, v0

    const-wide/32 v2, 0x2000c000

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 136
    return-void
.end method

.method public final setType(Lgnu/bytecode/Type;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 80
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 81
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    iput-object v3, v2, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 82
    return-void
.end method

.method public final setTypeExp(Lgnu/expr/Expression;)V
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "typeExp":Lgnu/expr/Expression;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 87
    const/4 v3, 0x0

    move-object v2, v3

    .line 88
    .local v2, "t":Lgnu/bytecode/Type;
    move-object v3, v1

    instance-of v3, v3, Lgnu/expr/TypeValue;

    if-eqz v3, :cond_2

    .line 89
    move-object v3, v1

    check-cast v3, Lgnu/expr/TypeValue;

    invoke-interface {v3}, Lgnu/expr/TypeValue;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v2, v3

    .line 92
    :goto_0
    move-object v3, v2

    if-nez v3, :cond_0

    .line 93
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v2, v3

    .line 94
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 95
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 96
    :cond_1
    return-void

    .line 91
    :cond_2
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public final setValue(Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "value":Lgnu/expr/Expression;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    return-void
.end method

.method shouldEarlyInit()Z
    .locals 4

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    move-object v1, v0

    const-wide/32 v2, 0x20000000

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isCompiletimeConstant()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return v0

    .restart local v0    # "this":Lgnu/expr/Declaration;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 931
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Declaration;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Declaration["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lgnu/expr/Declaration;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Declaration;
    return-object v0
.end method
