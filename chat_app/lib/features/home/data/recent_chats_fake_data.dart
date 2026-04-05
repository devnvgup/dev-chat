import '../domain/recent_chat.dart';

const recentChatsFakeData = <RecentChat>[
  RecentChat(
    name: 'Sarah J.',
    avatarUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuBBEDNMIuYBND5PDL0k0KCUVKXfm7bxPLa2aezg5aWav90EOcdBYWFJ3aaqM_t00-s8wU8k-eNXoik3U1TOIOxlfhW0p99_au6kIlZcCfN8movead8w1gDKCm0qCOHmPyzMEYqcvfY0jP3p7s5pw9ekuVu-ftZ1-tBjrJUBznbfOZiu-lu_bdY504-JQMWIH3ME5_KSf6JQwVnMbnNl3eq4yZ2wopGci-mWIYIwgmPcrIRH4GuoFYHaV5WAmH-sxPe9NYdwym-3b7-y',
    message: 'See you there! 👋',
    timeLabel: '2m ago',
    isUnread: true,
    isOnline: true,
  ),
  RecentChat(
    name: 'Mike D.',
    avatarUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuASM0nh3IF37HPJVPbM8hdNEjDLUOp1tXLOzSLt8CDIZcKz9lmRn4kWftS2-2ir6mGAraEEAtY1fup_6JEKhrBMQt8yskPfmDtiYee14JQZHKRQxs8Iir1i6Lj4_RozOSLZwowSzJENkR0FntuGLD9mPhKlORSmh4jpFNQLFpPyYY8yqgTTEW_RqLgEe67g5NsBULHjTbrZZPkEzVB2Afs7nC6sPZHBomxyeuuVas3h-NSjEaCqkgBL6MPA-4FQqVPjpN0Yl-n-Foog',
    message: "Sounds good, let's touch base later.",
    timeLabel: '15m ago',
    isOnline: true,
  ),
  RecentChat(
    name: 'Jane W.',
    avatarUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuAy6aPfu7jPb9BghxD11RRHNn98KKzAP8F1IsZ0UlEs4uvR_xaOIoIS8gnNFU7kHofOYLhmXmriVWYDPS-9t6vHcEQJnpwsNLsufdlt_vD5imDlu_Jvm6HhOFHYFSNwy2J2039kJHC8AA70K_7OcUwvVZLiyxOofQTbSN1z9JHEmzsVMIse57Cajm1ob745gBpZKBRIwVu82_oFMhEVuTOY8BcA8GZT_vxTV9CVWZnQ-x7T4rXyh0efc8frJnOwN1Ou0jGWVFwpJsKy',
    message: 'The project files are ready for review.',
    timeLabel: '1h ago',
    isUnread: true,
  ),
  RecentChat(
    name: 'Alex Rivera',
    avatarUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuDuqCkV9BDiWXL9-EZ1l509twAA3wVIrGSxCxRob5Y4FadgrnInTziGz3J0krEcZuwF7-6wcZmRYaehrNPVLcOdcLrS9eZILBIf9qbdzm7G53ZfRtwwuKvwtnRP-UgNASvWLYzodf9Sk808rwEx-96EURX4MU9OLXTknyyDGJ95U6ou-3i1-0TfpF1sj6QEN2QSTwh8GFaiXw2Ca4cOlOvTcMR2xmupAD98C1luvYnA3c2ZdK-kFCA8Alp5SZ9TPKpmo1Ev_SMJqxny',
    message: 'Did you see the latest update?',
    timeLabel: '3h ago',
    isOnline: true,
  ),
  RecentChat(
    name: 'Elena K.',
    avatarUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuCTSEoprPKP483wHHlZ_P5kqR-sqaHT7lhczioSR2tvV3GrGAeLzpgYQdz7bgVGMHJUgR-nxl6GU_WvC5jX4sjajnihKv7pD1yhX7BBzotJ-bmJ-jJMvfnNMP0NuF7bxPGoT12kDVs-Jpu4cfJiPvPVOg6nC1A4iNoJ3pwiv-cY70fMbnq3H8xCBH2eyWKVsTNU2v6ievGvoujIPJOiMNlS3d6lRkDRabLW9JIDpJFRT6oOgNRs5LsLgRAwDOLr_IoqES2HtxlrsrLx',
    message: "I'll send the draft over by Monday.",
    timeLabel: 'Yesterday',
  ),
];
