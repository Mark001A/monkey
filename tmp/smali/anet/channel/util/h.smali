.class public Lanet/channel/util/h;
.super Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const-string v0, "awcn.TlsSniSocketFactory"

    iput-object v0, p0, Lanet/channel/util/h;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/util/h;->b:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lanet/channel/util/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lanet/channel/util/h;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p2, p0, Lanet/channel/util/h;->c:Ljava/lang/String;

    :cond_0
    invoke-static {v6}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "awcn.TlsSniSocketFactory"

    const-string v1, "customized createSocket"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "host"

    aput-object v3, v2, v7

    iget-object v3, p0, Lanet/channel/util/h;->c:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v8, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :cond_2
    invoke-static {v7}, Landroid/net/SSLCertificateSocketFactory;->getDefault(I)Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    invoke-virtual {v0, v1, p3}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_4

    iget-object v2, p0, Lanet/channel/util/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-static {v6}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "awcn.TlsSniSocketFactory"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "SSLSession PeerHost"

    aput-object v4, v3, v7

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v8, v8, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-object v1

    :cond_4
    :try_start_0
    iget-object v0, p0, Lanet/channel/util/h;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setHostname"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/util/h;->b:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lanet/channel/util/h;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_5
    iget-object v0, p0, Lanet/channel/util/h;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lanet/channel/util/h;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "awcn.TlsSniSocketFactory"

    const-string v3, "SNI not useable"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v8, v0, v4}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
