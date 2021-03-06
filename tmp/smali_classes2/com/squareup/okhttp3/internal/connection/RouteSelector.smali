.class public final Lcom/squareup/okhttp3/internal/connection/RouteSelector;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field private final address:Lcom/squareup/okhttp3/Address;

.field private inetSocketAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private lastInetSocketAddress:Ljava/net/InetSocketAddress;

.field private lastProxy:Ljava/net/Proxy;

.field private nextInetSocketAddressIndex:I

.field private nextProxyIndex:I

.field private final postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp3/Route;",
            ">;"
        }
    .end annotation
.end field

.field private proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final routeDatabase:Lcom/squareup/okhttp3/internal/connection/RouteDatabase;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp3/Address;Lcom/squareup/okhttp3/internal/connection/RouteDatabase;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->address:Lcom/squareup/okhttp3/Address;

    .line 57
    iput-object p2, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->routeDatabase:Lcom/squareup/okhttp3/internal/connection/RouteDatabase;

    .line 59
    invoke-virtual {p1}, Lcom/squareup/okhttp3/Address;->url()Lcom/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp3/Address;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->resetNextProxy(Lcom/squareup/okhttp3/HttpUrl;Ljava/net/Proxy;)V

    .line 60
    return-void
.end method

.method static getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 189
    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasNextInetSocketAddress()Z
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    iget-object v1, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextPostponed()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextProxy()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    iget-object v1, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->address:Lcom/squareup/okhttp3/Address;

    invoke-virtual {v2}, Lcom/squareup/okhttp3/Address;->url()Lcom/squareup/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    iget v1, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method private nextPostponed()Lcom/squareup/okhttp3/Route;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp3/Route;

    return-object v0
.end method

.method private nextProxy()Ljava/net/Proxy;
    .locals 3

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->address:Lcom/squareup/okhttp3/Address;

    invoke-virtual {v2}, Lcom/squareup/okhttp3/Address;->url()Lcom/squareup/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    iget v1, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 138
    invoke-direct {p0, v0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    .line 139
    return-object v0
.end method

.method private resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 149
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->address:Lcom/squareup/okhttp3/Address;

    invoke-virtual {v0}, Lcom/squareup/okhttp3/Address;->url()Lcom/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->address:Lcom/squareup/okhttp3/Address;

    invoke-virtual {v0}, Lcom/squareup/okhttp3/Address;->url()Lcom/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp3/HttpUrl;->port()I

    move-result v0

    move v3, v0

    move-object v0, v1

    .line 163
    :goto_0
    const/4 v1, 0x1

    if-lt v3, v1, :cond_1

    const v1, 0xffff

    if-le v3, v1, :cond_4

    .line 164
    :cond_1
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No route to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; port is out of range"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 154
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_3

    .line 155
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_3
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 159
    invoke-static {v0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    move v3, v0

    move-object v0, v1

    goto :goto_0

    .line 168
    :cond_4
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v4, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v1, v4, :cond_6

    .line 169
    iget-object v1, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-static {v0, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_5
    iput v2, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    .line 180
    return-void

    .line 172
    :cond_6
    iget-object v1, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->address:Lcom/squareup/okhttp3/Address;

    invoke-virtual {v1}, Lcom/squareup/okhttp3/Address;->dns()Lcom/squareup/okhttp3/Dns;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/squareup/okhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 173
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_5

    .line 174
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 175
    iget-object v6, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private resetNextProxy(Lcom/squareup/okhttp3/HttpUrl;Ljava/net/Proxy;)V
    .locals 2

    .prologue
    .line 110
    if-eqz p2, :cond_0

    .line 112
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    .line 123
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    .line 124
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->address:Lcom/squareup/okhttp3/Address;

    invoke-virtual {v0}, Lcom/squareup/okhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 121
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public connectFailed(Lcom/squareup/okhttp3/Route;Ljava/io/IOException;)V
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/squareup/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->address:Lcom/squareup/okhttp3/Address;

    invoke-virtual {v0}, Lcom/squareup/okhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->address:Lcom/squareup/okhttp3/Address;

    invoke-virtual {v0}, Lcom/squareup/okhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->address:Lcom/squareup/okhttp3/Address;

    .line 102
    invoke-virtual {v1}, Lcom/squareup/okhttp3/Address;->url()Lcom/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 101
    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->routeDatabase:Lcom/squareup/okhttp3/internal/connection/RouteDatabase;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp3/internal/connection/RouteDatabase;->failed(Lcom/squareup/okhttp3/Route;)V

    .line 106
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->hasNextPostponed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/squareup/okhttp3/Route;
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    invoke-direct {p0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->hasNextPostponed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->nextPostponed()Lcom/squareup/okhttp3/Route;

    move-result-object v0

    .line 91
    :cond_1
    :goto_0
    return-object v0

    .line 80
    :cond_2
    invoke-direct {p0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->nextProxy()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->lastProxy:Ljava/net/Proxy;

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 84
    new-instance v0, Lcom/squareup/okhttp3/Route;

    iget-object v1, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->address:Lcom/squareup/okhttp3/Address;

    iget-object v2, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->lastProxy:Ljava/net/Proxy;

    iget-object v3, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp3/Route;-><init>(Lcom/squareup/okhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 85
    iget-object v1, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->routeDatabase:Lcom/squareup/okhttp3/internal/connection/RouteDatabase;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp3/internal/connection/RouteDatabase;->shouldPostpone(Lcom/squareup/okhttp3/Route;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0}, Lcom/squareup/okhttp3/internal/connection/RouteSelector;->next()Lcom/squareup/okhttp3/Route;

    move-result-object v0

    goto :goto_0
.end method
