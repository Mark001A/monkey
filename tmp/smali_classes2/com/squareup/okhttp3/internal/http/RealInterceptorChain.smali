.class public final Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lcom/squareup/okhttp3/Interceptor$Chain;


# instance fields
.field private calls:I

.field private final connection:Lcom/squareup/okhttp3/Connection;

.field private final httpStream:Lcom/squareup/okhttp3/internal/http/HttpStream;

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Lcom/squareup/okhttp3/Request;

.field private final streamAllocation:Lcom/squareup/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/squareup/okhttp3/internal/connection/StreamAllocation;Lcom/squareup/okhttp3/internal/http/HttpStream;Lcom/squareup/okhttp3/Connection;ILcom/squareup/okhttp3/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp3/Interceptor;",
            ">;",
            "Lcom/squareup/okhttp3/internal/connection/StreamAllocation;",
            "Lcom/squareup/okhttp3/internal/http/HttpStream;",
            "Lcom/squareup/okhttp3/Connection;",
            "I",
            "Lcom/squareup/okhttp3/Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 43
    iput-object p4, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->connection:Lcom/squareup/okhttp3/Connection;

    .line 44
    iput-object p2, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lcom/squareup/okhttp3/internal/connection/StreamAllocation;

    .line 45
    iput-object p3, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->httpStream:Lcom/squareup/okhttp3/internal/http/HttpStream;

    .line 46
    iput p5, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->index:I

    .line 47
    iput-object p6, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->request:Lcom/squareup/okhttp3/Request;

    .line 48
    return-void
.end method

.method private sameConnection(Lcom/squareup/okhttp3/HttpUrl;)Z
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->connection:Lcom/squareup/okhttp3/Connection;

    invoke-interface {v1}, Lcom/squareup/okhttp3/Connection;->route()Lcom/squareup/okhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp3/Route;->address()Lcom/squareup/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp3/Address;->url()Lcom/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/squareup/okhttp3/HttpUrl;->port()I

    move-result v0

    iget-object v1, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->connection:Lcom/squareup/okhttp3/Connection;

    invoke-interface {v1}, Lcom/squareup/okhttp3/Connection;->route()Lcom/squareup/okhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp3/Route;->address()Lcom/squareup/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp3/Address;->url()Lcom/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connection()Lcom/squareup/okhttp3/Connection;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->connection:Lcom/squareup/okhttp3/Connection;

    return-object v0
.end method

.method public httpStream()Lcom/squareup/okhttp3/internal/http/HttpStream;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->httpStream:Lcom/squareup/okhttp3/internal/http/HttpStream;

    return-object v0
.end method

.method public proceed(Lcom/squareup/okhttp3/Request;)Lcom/squareup/okhttp3/Response;
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lcom/squareup/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->httpStream:Lcom/squareup/okhttp3/internal/http/HttpStream;

    iget-object v2, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->connection:Lcom/squareup/okhttp3/Connection;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->proceed(Lcom/squareup/okhttp3/Request;Lcom/squareup/okhttp3/internal/connection/StreamAllocation;Lcom/squareup/okhttp3/internal/http/HttpStream;Lcom/squareup/okhttp3/Connection;)Lcom/squareup/okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public proceed(Lcom/squareup/okhttp3/Request;Lcom/squareup/okhttp3/internal/connection/StreamAllocation;Lcom/squareup/okhttp3/internal/http/HttpStream;Lcom/squareup/okhttp3/Connection;)Lcom/squareup/okhttp3/Response;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 72
    iget v0, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v1, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    iget v0, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 77
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->httpStream:Lcom/squareup/okhttp3/internal/http/HttpStream;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/squareup/okhttp3/Request;->url()Lcom/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->sameConnection(Lcom/squareup/okhttp3/HttpUrl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v3, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must retain the same host and port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->httpStream:Lcom/squareup/okhttp3/internal/http/HttpStream;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->calls:I

    if-le v0, v7, :cond_2

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v3, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    new-instance v0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;

    iget-object v1, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v2, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lcom/squareup/okhttp3/internal/connection/StreamAllocation;Lcom/squareup/okhttp3/internal/http/HttpStream;Lcom/squareup/okhttp3/Connection;ILcom/squareup/okhttp3/Request;)V

    .line 91
    iget-object v1, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v2, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp3/Interceptor;

    .line 92
    invoke-interface {v1, v0}, Lcom/squareup/okhttp3/Interceptor;->intercept(Lcom/squareup/okhttp3/Interceptor$Chain;)Lcom/squareup/okhttp3/Response;

    move-result-object v2

    .line 95
    if-eqz p3, :cond_3

    iget v3, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v0, v0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->calls:I

    if-eq v0, v7, :cond_3

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_3
    if-nez v2, :cond_4

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_4
    return-object v2
.end method

.method public request()Lcom/squareup/okhttp3/Request;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->request:Lcom/squareup/okhttp3/Request;

    return-object v0
.end method

.method public streamAllocation()Lcom/squareup/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lcom/squareup/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
