.class public Lcom/facebook/network/connectionclass/e;
.super Ljava/lang/Object;
.source "LineBufferReader.java"


# instance fields
.field private a:[B

.field private b:Ljava/io/FileInputStream;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/network/connectionclass/e;->a:[B

    .line 29
    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 47
    iget v0, p0, Lcom/facebook/network/connectionclass/e;->c:I

    iget v3, p0, Lcom/facebook/network/connectionclass/e;->d:I

    if-lt v0, v3, :cond_0

    .line 48
    iget-object v0, p0, Lcom/facebook/network/connectionclass/e;->b:Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/facebook/network/connectionclass/e;->a:[B

    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/facebook/network/connectionclass/e;->d:I

    .line 49
    iput v1, p0, Lcom/facebook/network/connectionclass/e;->c:I

    :cond_0
    move v0, v1

    .line 53
    :goto_0
    iget v3, p0, Lcom/facebook/network/connectionclass/e;->d:I

    if-eq v3, v2, :cond_2

    array-length v3, p1

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/facebook/network/connectionclass/e;->a:[B

    iget v4, p0, Lcom/facebook/network/connectionclass/e;->c:I

    aget-byte v3, v3, v4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    .line 54
    iget-object v3, p0, Lcom/facebook/network/connectionclass/e;->a:[B

    iget v4, p0, Lcom/facebook/network/connectionclass/e;->c:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v0

    .line 55
    iget v3, p0, Lcom/facebook/network/connectionclass/e;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/network/connectionclass/e;->c:I

    .line 56
    iget v3, p0, Lcom/facebook/network/connectionclass/e;->c:I

    iget v4, p0, Lcom/facebook/network/connectionclass/e;->d:I

    if-lt v3, v4, :cond_1

    .line 57
    iget-object v3, p0, Lcom/facebook/network/connectionclass/e;->b:Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/facebook/network/connectionclass/e;->a:[B

    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    iput v3, p0, Lcom/facebook/network/connectionclass/e;->d:I

    .line 58
    iput v1, p0, Lcom/facebook/network/connectionclass/e;->c:I

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_2
    iget v1, p0, Lcom/facebook/network/connectionclass/e;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/network/connectionclass/e;->c:I

    .line 65
    iget v1, p0, Lcom/facebook/network/connectionclass/e;->d:I

    if-ne v1, v2, :cond_3

    move v0, v2

    .line 68
    :cond_3
    return v0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 76
    iget v0, p0, Lcom/facebook/network/connectionclass/e;->c:I

    iget v2, p0, Lcom/facebook/network/connectionclass/e;->d:I

    if-lt v0, v2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/facebook/network/connectionclass/e;->b:Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/facebook/network/connectionclass/e;->a:[B

    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/facebook/network/connectionclass/e;->d:I

    .line 78
    iput v1, p0, Lcom/facebook/network/connectionclass/e;->c:I

    :cond_0
    move v0, v1

    .line 80
    :goto_0
    iget v2, p0, Lcom/facebook/network/connectionclass/e;->d:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/facebook/network/connectionclass/e;->a:[B

    iget v3, p0, Lcom/facebook/network/connectionclass/e;->c:I

    aget-byte v2, v2, v3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 81
    iget v2, p0, Lcom/facebook/network/connectionclass/e;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/facebook/network/connectionclass/e;->c:I

    .line 82
    iget v2, p0, Lcom/facebook/network/connectionclass/e;->c:I

    iget v3, p0, Lcom/facebook/network/connectionclass/e;->d:I

    if-lt v2, v3, :cond_1

    .line 83
    iget-object v2, p0, Lcom/facebook/network/connectionclass/e;->b:Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/facebook/network/connectionclass/e;->a:[B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    iput v2, p0, Lcom/facebook/network/connectionclass/e;->d:I

    .line 84
    iput v1, p0, Lcom/facebook/network/connectionclass/e;->c:I

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_2
    iget v0, p0, Lcom/facebook/network/connectionclass/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/network/connectionclass/e;->c:I

    .line 89
    return-void
.end method

.method public a(Ljava/io/FileInputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-object p1, p0, Lcom/facebook/network/connectionclass/e;->b:Ljava/io/FileInputStream;

    .line 37
    iput v0, p0, Lcom/facebook/network/connectionclass/e;->d:I

    .line 38
    iput v0, p0, Lcom/facebook/network/connectionclass/e;->c:I

    .line 39
    return-void
.end method