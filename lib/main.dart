import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/chat_screen.dart';
import 'services/auth_service.dart';
import 'services/chat_service.dart';

void main() {
  runApp(const FireChatApp());
}

class FireChatApp extends StatefulWidget {
  const FireChatApp({super.key});

  @override
  State<FireChatApp> createState() => _FireChatAppState();
}

class _FireChatAppState extends State<FireChatApp> {
  final AuthService _authService = AuthService();
  final ChatService _chatService = ChatService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FireChat Lab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: ListenableBuilder(
        listenable: _authService,
        builder: (context, _) {
          if (_authService.isAuthenticated) {
            return ChatScreen(
              authService: _authService,
              chatService: _chatService,
            );
          }
          return LoginScreen(authService: _authService);
        },
      ),
    );
  }
}