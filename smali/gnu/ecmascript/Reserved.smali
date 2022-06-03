.class public Lgnu/ecmascript/Reserved;
.super Ljava/lang/Object;
.source "Reserved.java"


# static fields
.field public static final BREAK_TOKEN:I = 0x23

.field public static final CONTINUE_TOKEN:I = 0x22

.field public static final ELSE_TOKEN:I = 0x26

.field public static final FOR_TOKEN:I = 0x21

.field public static final FUNCTION_TOKEN:I = 0x29

.field public static final IF_TOKEN:I = 0x1f

.field public static final LESS_OP:I = 0x5

.field public static final LSHIFT_OP:I = 0x4

.field public static final MINUS_OP:I = 0x2

.field public static final NEW_TOKEN:I = 0x27

.field public static final PLUS_OP:I = 0x1

.field public static final RETURN_TOKEN:I = 0x24

.field public static final THIS_TOKEN:I = 0x28

.field public static final TIMES_OP:I = 0x3

.field public static final VAR_TOKEN:I = 0x1e

.field public static final WHILE_TOKEN:I = 0x20

.field public static final WITH_TOKEN:I = 0x25

.field static final opBitAnd:Lgnu/ecmascript/Reserved;

.field static final opBitOr:Lgnu/ecmascript/Reserved;

.field static final opBitXor:Lgnu/ecmascript/Reserved;

.field static final opBoolAnd:Lgnu/ecmascript/Reserved;

.field static final opBoolOr:Lgnu/ecmascript/Reserved;

.field static final opDivide:Lgnu/ecmascript/Reserved;

.field static final opEqual:Lgnu/ecmascript/Reserved;

.field static final opGreater:Lgnu/ecmascript/Reserved;

.field static final opGreaterEqual:Lgnu/ecmascript/Reserved;

.field static final opLess:Lgnu/ecmascript/Reserved;

.field static final opLessEqual:Lgnu/ecmascript/Reserved;

.field static final opLshift:Lgnu/ecmascript/Reserved;

.field static final opMinus:Lgnu/ecmascript/Reserved;

.field static opMinusMinus:Lgnu/ecmascript/Reserved;

.field static final opNotEqual:Lgnu/ecmascript/Reserved;

.field static final opPlus:Lgnu/ecmascript/Reserved;

.field static opPlusPlus:Lgnu/ecmascript/Reserved;

.field static final opRemainder:Lgnu/ecmascript/Reserved;

.field static final opRshiftSigned:Lgnu/ecmascript/Reserved;

.field static final opRshiftUnsigned:Lgnu/ecmascript/Reserved;

.field static final opTimes:Lgnu/ecmascript/Reserved;


# instance fields
.field name:Ljava/lang/String;

.field prio:I

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 49
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "||"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opBoolOr:Lgnu/ecmascript/Reserved;

    .line 50
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "&&"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opBoolAnd:Lgnu/ecmascript/Reserved;

    .line 51
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "|"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opBitOr:Lgnu/ecmascript/Reserved;

    .line 52
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "^"

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opBitXor:Lgnu/ecmascript/Reserved;

    .line 53
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "&"

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opBitAnd:Lgnu/ecmascript/Reserved;

    .line 54
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "="

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opEqual:Lgnu/ecmascript/Reserved;

    .line 55
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "!="

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opNotEqual:Lgnu/ecmascript/Reserved;

    .line 56
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "<"

    const/4 v3, 0x7

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opLess:Lgnu/ecmascript/Reserved;

    .line 57
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, ">"

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opGreater:Lgnu/ecmascript/Reserved;

    .line 58
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "<="

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opLessEqual:Lgnu/ecmascript/Reserved;

    .line 59
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, ">="

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opGreaterEqual:Lgnu/ecmascript/Reserved;

    .line 60
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "<<"

    const/16 v3, 0x8

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opLshift:Lgnu/ecmascript/Reserved;

    .line 61
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, ">>"

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opRshiftSigned:Lgnu/ecmascript/Reserved;

    .line 62
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, ">>>"

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opRshiftUnsigned:Lgnu/ecmascript/Reserved;

    .line 63
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "+"

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opPlus:Lgnu/ecmascript/Reserved;

    .line 64
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "-"

    const/16 v3, 0x9

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opMinus:Lgnu/ecmascript/Reserved;

    .line 65
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "*"

    const/16 v3, 0xa

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opTimes:Lgnu/ecmascript/Reserved;

    .line 66
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "/"

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opDivide:Lgnu/ecmascript/Reserved;

    .line 67
    new-instance v0, Lgnu/ecmascript/Reserved;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "%"

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgnu/ecmascript/Reserved;->opRemainder:Lgnu/ecmascript/Reserved;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Reserved;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "prio":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/ecmascript/Reserved;->name:Ljava/lang/String;

    .line 39
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/ecmascript/Reserved;->prio:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 10

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Reserved;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "prio":I
    move v3, p3

    .local v3, "op":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/ecmascript/Reserved;->name:Ljava/lang/String;

    .line 45
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/ecmascript/Reserved;->prio:I

    .line 46
    move-object v4, v0

    new-instance v5, Lgnu/ecmascript/BinaryOp;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move v8, v3

    invoke-direct {v6, v7, v8}, Lgnu/ecmascript/BinaryOp;-><init>(Ljava/lang/String;I)V

    iput-object v5, v4, Lgnu/ecmascript/Reserved;->proc:Lgnu/mapping/Procedure;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILgnu/mapping/Procedure;)V
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Reserved;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "prio":I
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/ecmascript/Reserved;->name:Ljava/lang/String;

    .line 32
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/ecmascript/Reserved;->prio:I

    .line 33
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/ecmascript/Reserved;->proc:Lgnu/mapping/Procedure;

    .line 34
    return-void
.end method


# virtual methods
.method public isAssignmentOp()Z
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Reserved;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/ecmascript/Reserved;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Reserved;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[Reserved \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/ecmascript/Reserved;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" prio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lgnu/ecmascript/Reserved;->prio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/ecmascript/Reserved;
    return-object v0
.end method
